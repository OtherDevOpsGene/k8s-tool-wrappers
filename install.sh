#! /bin/bash

dest="/usr/local/bin/"

# switch to script directory
cd "$(dirname -- ${0})" || exit

for script in aws checkov cosign crane dive eksctl grype skopeo syft trivy
do
  skip_script="SKIP_${script^^}"
  if [[ -z "${!skip_script+x}" ]]; then
    install -v "${script}" "${dest}"
  fi
done
