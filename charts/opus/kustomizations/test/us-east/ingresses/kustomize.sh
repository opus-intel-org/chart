#!/bin/bash
set -e
set -o pipefail
shopt -s expand_aliases
cd "$(dirname "$0")"

cat <&0 >all.yaml

if ! command -v kustomize &> /dev/null
then
	alias kustomize=../kustomize
fi

kustomize build . && rm -f all.yaml
