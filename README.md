# k8s-tool-wrappers

Shell wrappers around Docker commands to run some Kubernetes tools I use.

* aws
* checkov
* cosign
* crane
* dive
* eksctl
* grype
* skopeo
* syft
* trivy

## Version control

The version is assumed to be `latest` unless set via environment variable.

```console
CHECKOV_VERSION=2.2.20
```

The image will be pulled if it hasn't been pulled in the last 12 hours. It will
still honor the version setting.

## Installation

The `install.sh` installs the tools into `/usr/local/bin`. 
Each of the tools is installed unless skipped via environment variable.

```console
sudo SKIP_AWS=true ./install.sh
```
