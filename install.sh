#! /bin/bash

dest="/usr/local/bin/"

# switch to script directory
cd "$(dirname -- ${0})" || exit

for script in checkov eksctl grype syft
do
  install -v "${script}" "${dest}"
done
