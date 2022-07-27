set -e

if [[ $(kubectl config current-context) == minikube ]]; then
  CONTEXT=minikube
  ADDITIONAL_PROFILE=",minikube"
  unset SKAFFOLD_DEFAULT_REPO
else
  CONTEXT=docker-desktop
  unset SKAFFOLD_DEFAULT_REPO
fi

kubectl apply -k namespaces --context=${CONTEXT}

skaffold run -p run-migrations,add-artifacts${ADDITIONAL_PROFILE} --tail --port-forward=user
skaffold dev -p remove-tags,add-artifacts${ADDITIONAL_PROFILE} --cleanup=false
