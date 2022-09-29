set -e

printf "\033[1;31mRUNNING IN PRODUCTION\033[0m\n" && read -p "CONFIRM (Y) ..." -n 1 -r && if [[ ! $REPLY =~ ^[Yy]$ ]]; then exit 1; fi

export SKAFFOLD_DEFAULT_REPO=docker.io/opusmvp

skaffold deploy -p production --skip-render
