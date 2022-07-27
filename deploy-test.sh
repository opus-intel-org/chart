set -e

export SKAFFOLD_DEFAULT_REPO=docker.io/opusintel

skaffold deploy -p test --skip-render
