#!/bin/bash
set -e
set -o pipefail
cd "$(dirname "$0")"

cat <&0 | ./app/kustomize.sh
