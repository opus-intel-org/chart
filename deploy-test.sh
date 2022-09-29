set -e

export SKAFFOLD_DEFAULT_REPO=docker.io/opusmvp

skaffold deploy -p test --skip-render
