# k8s-tool-wrappers

Shell wrappers around Docker commands to run some Kubernetes tools I use.

* aws
* checkov
* eksctl
* grype
* syft
* trivy

## Version control

The version is assumed to be `latest` unless set via environment variable.

```console
CHECKOV_VERSION=2.2.20
```

The image will be pulled if it hasn't been pulled in the last 12 hours. It will
still honor the version setting.
