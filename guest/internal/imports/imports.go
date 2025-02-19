//go:build tinygo.wasm

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

package imports

//go:wasm-module k8s.io/scheduler
//go:export status_reason
func _statusReason(ptr, size uint32)

//go:wasm-module k8s.io/api
//go:export nodeInfo/node
func _nodeInfoNode(ptr uint32, limit bufLimit) (len uint32)

//go:wasm-module k8s.io/api
//go:export pod
func _pod(ptr uint32, limit bufLimit) (len uint32)
