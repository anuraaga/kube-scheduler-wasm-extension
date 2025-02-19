/*
   Copyright 2023 The Kubernetes Authors.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

package main

import (
	"context"
	"io"
	"log"
	"os"

	"github.com/stealthrocket/wzprof"
	"github.com/tetratelabs/wazero/experimental"
	"k8s.io/kubernetes/pkg/scheduler/framework"
	wasm "sigs.k8s.io/kube-scheduler-wasm-extension/scheduler/plugin"
)

func main() {
	guestPath := os.Args[1] // must be a debug build
	guestBin, err := os.ReadFile(guestPath)
	if err != nil {
		log.Panicln("error reading", guestPath, ":", err)
	}

	node := test.NodeReal
	pod := test.PodReal
	ni := framework.NewNodeInfo()
	ni.SetNode(node)

	// Configure the profiler, which integrates via context configuration.
	sampleRate := 1.0
	p := wzprof.ProfilingFor(guestBin)
	cpu := p.CPUProfiler()
	mem := p.MemoryProfiler()
	ctx := context.WithValue(context.Background(),
		experimental.FunctionListenerFactoryKey{},
		experimental.MultiFunctionListenerFactory(
			wzprof.Sample(sampleRate, cpu),
			wzprof.Sample(sampleRate, mem),
		),
	)

	// Pass the profiling context to the plugin.
	plugin, err := wasm.NewFromConfig(ctx, wasm.PluginConfig{GuestPath: guestPath})
	if err != nil {
		log.Panicln("failed to create plugin:", err)
	}
	defer plugin.(io.Closer).Close()

	// Profile around the Filter function
	cpu.StartProfile()
	s := plugin.(framework.FilterPlugin).Filter(ctx, nil, pod, ni)
	if want, have := framework.Success, s.Code(); want != have {
		log.Panicln("filter failed:", want, "!=", have, ":", s.Message())
	}
	cpuProfile := cpu.StopProfile(sampleRate)
	memProfile := mem.NewProfile(sampleRate)

	if err := wzprof.WriteProfile("cpu.pprof", cpuProfile); err != nil {
		log.Panicln("error writing CPU profile:", err)
	}
	if err := wzprof.WriteProfile("mem.pprof", memProfile); err != nil {
		log.Panicln("error writing memory profile:", err)
	}
}
