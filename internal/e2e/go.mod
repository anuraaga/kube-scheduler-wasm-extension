// e2e (end-to-end) tests which depend on both guest and plugin types.
module sigs.k8s.io/kube-scheduler-wasm-extension/internal/e2e

go 1.20

require (
	github.com/stealthrocket/wzprof v0.1.5
	github.com/tetratelabs/wazero v1.2.0
	k8s.io/api v0.26.2
	k8s.io/kubernetes v1.26.2
	sigs.k8s.io/kube-scheduler-wasm-extension/kubernetes/proto v0.0.0-00010101000000-000000000000
	sigs.k8s.io/kube-scheduler-wasm-extension/scheduler v0.0.0-00010101000000-000000000000
)

replace (
	google.golang.org/grpc => google.golang.org/grpc v1.38.0
	k8s.io/api => k8s.io/api v0.26.2
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.26.2
	k8s.io/apimachinery => k8s.io/apimachinery v0.26.2
	k8s.io/apiserver => k8s.io/apiserver v0.26.2
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.26.2
	k8s.io/client-go => k8s.io/client-go v0.26.2
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.26.2
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.26.2
	k8s.io/code-generator => k8s.io/code-generator v0.26.2
	k8s.io/component-base => k8s.io/component-base v0.26.2
	k8s.io/component-helpers => k8s.io/component-helpers v0.26.2
	k8s.io/controller-manager => k8s.io/controller-manager v0.26.2
	k8s.io/cri-api => k8s.io/cri-api v0.26.2
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.26.2
	k8s.io/dynamic-resource-allocation => k8s.io/dynamic-resource-allocation v0.26.2
	k8s.io/kms => k8s.io/kms v0.26.1
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.26.2
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.26.2
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.26.2
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.26.2
	k8s.io/kubectl => k8s.io/kubectl v0.26.2
	k8s.io/kubelet => k8s.io/kubelet v0.26.2
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.26.2
	k8s.io/metrics => k8s.io/metrics v0.26.2
	k8s.io/mount-utils => k8s.io/mount-utils v0.26.2
	k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.26.2
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.26.2
)

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver/v4 v4.0.0 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/emicklei/go-restful/v3 v3.9.0 // indirect
	github.com/go-logr/logr v1.2.3 // indirect
	github.com/go-openapi/jsonpointer v0.19.5 // indirect
	github.com/go-openapi/jsonreference v0.20.0 // indirect
	github.com/go-openapi/swag v0.19.14 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/gnostic v0.5.7-v3refs // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/google/pprof v0.0.0-20230406165453-00490a63f317 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/mailru/easyjson v0.7.6 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/prometheus/client_golang v1.14.0 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	golang.org/x/exp v0.0.0-20230425010034-47ecfdc1ba53 // indirect
	golang.org/x/net v0.7.0 // indirect
	golang.org/x/oauth2 v0.0.0-20220223155221-ee480838109b // indirect
	golang.org/x/sys v0.5.0 // indirect
	golang.org/x/term v0.5.0 // indirect
	golang.org/x/text v0.7.0 // indirect
	golang.org/x/time v0.0.0-20220210224613-90d013bbcef8 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/apimachinery v0.26.2 // indirect
	k8s.io/client-go v0.26.2 // indirect
	k8s.io/component-base v0.26.2 // indirect
	k8s.io/component-helpers v0.26.2 // indirect
	k8s.io/klog/v2 v2.80.1 // indirect
	k8s.io/kube-openapi v0.0.0-20221012153701-172d655c2280 // indirect
	k8s.io/kube-scheduler v0.26.2 // indirect
	k8s.io/kubectl v0.26.2 // indirect
	k8s.io/utils v0.0.0-20221107191617-1a15be271d1d // indirect
	sigs.k8s.io/json v0.0.0-20220713155537-f223a00ba0e2 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
	sigs.k8s.io/yaml v1.3.0 // indirect
)

replace (
	sigs.k8s.io/kube-scheduler-wasm-extension/kubernetes/proto => ../../kubernetes/proto

	sigs.k8s.io/kube-scheduler-wasm-extension/scheduler => ../../scheduler
)
