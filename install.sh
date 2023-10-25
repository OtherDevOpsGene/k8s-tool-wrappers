#! /bin/bash

dest="/usr/local/bin/"

# switch to script directory
cd "$(dirname -- ${0})" || exit

for script in aws checkov cosign crane ctop dive eksctl grype skopeo slim syft trivy
do
  skip_script="SKIP_${script^^}"
  if [[ -z "${!skip_script+x}" ]]; then
    install -v "${script}" "${dest}"
  fi
done
