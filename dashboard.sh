kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.1/aio/deploy/recommended.yaml
kubectl apply -f admin-kube-dashboard.yaml
echo
echo COPY TOKEN
echo
kubectl -n kubernetes-dashboard create token admin-user
echo
echo opening...
sleep 5
echo
URL=http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/overview?namespace=_all
echo OPEN ${URL} && open ${URL}
kubectl proxy
