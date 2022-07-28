#!/bin/bash
set -e
set -o pipefail
shopt -s expand_aliases
cd "$(dirname "$0")"

cat <&0 >all.yaml

kustomize build . && rm -f all.yaml
