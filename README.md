# chart

```shell
kubectl config get-contexts
for cxt in $(kubectl config get-contexts --no-headers | awk '{print "contexts."$2}' | grep -E --invert-match "docker-"); do kubectl config unset $cxt; done
kubectl config --kubeconfig=config-demo view --minify

kubectl describe managedcertificate --all-namespaces
kubectl exec -it podid -n namespace -- bash
kubectl get pods --field-selector 'status.phase=Failed' -o name --all-namespaces
kubectl get pods --field-selector 'status.phase=Failed' -o name -n namespace | xargs kubectl delete -n namespace

gcloud auth list
gcloud auth login
gcloud auth revoke ACCOUNT
gcloud compute ssl-certificates list --project=project-name
gcloud compute ssl-certificates delete certificate-name --project=project-name

docker login -u user -p token

docker run -it centos:7 /bin/bash
echo 'dockerhubuser:token' | tr -d "\n" | base64 -w 0
echo ZG9ja2VyaHVidXNlcjp0b2tlbg== | base64 -d

ngrep -q -W byline port 443

helm repo add bitnami https://charts.bitnami.com/bitnami

helm list -n namespace --all
helm history release-name -n namespace
helm rollback release-name revision-number -n namespace

alias istioctl=./istio-1.10.2/bin/istioctl
istioctl profile dump default > ./default.yaml

DOCKER_HOST=unix:///home/pc2/.docker/desktop/docker.sock ./dev.sh
docker context ls
docker context use default

winget show OpenJS.NodeJS --versions
winget install OpenJS.NodeJS -v 16.12.0

cd /mnt/c/Users/userfolder/projectfolder
```
```shell
openssl genrsa -out rsa-private.pem 4096
openssl genrsa -out rsa-private.pem 16384
openssl rsa -in rsa-private.pem -out rsa-public.pem -outform PEM -pubout

gsutil -m cp -r gs://bucket-name/* folder-name
gsutil -m cp -r ./folder-name/* gs://bucket-name

gsutil -m cp -r gs://bucket-name/* gs://bucket-name

Preserves ACLs
gsutil -m cp -r -p gs://bucket-name/* gs://bucket-name

mongodump -h database-host:27017 -d database-name -u user-name -p password -o folder-name --authenticationDatabase admin --tls

mongorestore -h database-host:27017 -d database-name -u user-name -p password folder-name/database-name --authenticationDatabase admin --tls

```
#### nestjs
```shell
npm ls -g --depth=0

nest new server --skip-git --package-manager npm
rm -rf server/.prettierrc
npm uninstall -D eslint-config-prettier eslint-plugin-prettier prettier

nest generate resource resource-name
nest generate provider folder/mongo-main.provider

```
```json5
//tsconfig.json
{
  "target": "es2020",
  "esModuleInterop": true,
  "resolveJsonModule": true
}
```
```json5
//nest-cli.json
{
  "compilerOptions": {
    "plugins": [
      {
        "name": "@nestjs/swagger",
        "options": {
          "introspectComments": true,
          "controllerKeyOfComment": "summary"
        }
      },
      {
        "name": "@nestjs/graphql",
        "options": {
          "typeFileNameSuffix": [
            ".dto.ts",
            ".entity.ts"
          ],
          "introspectComments": true
        }
      }
    ]
  }
}
```
```text
apollo graphql settings

"request.credentials": "include"

altair graphql settings

enable: Send requests with credentials (cookies)
```
```shell

helm create chart-name
helm repo list
helm repo remove repository-name
helm dependency list
helm dependency build
helm dependency update

```

```json5
//create mongo atlas search index
// collection: Place
// index name: autocomplete1
{
  "mappings": {
    "fields": {
      "name": [
        {
          "type": "autocomplete",
          "analyzer": "lucene.standard",
          "tokenization": "nGram",
          "minGrams": 1,
          "maxGrams": 50,
          "foldDiacritics": true
        }
      ],
      "formattedAddress": [
        {
          "type": "autocomplete",
          "analyzer": "lucene.standard",
          "tokenization": "nGram",
          "minGrams": 1,
          "maxGrams": 50,
          "foldDiacritics": true
        }
      ],
      "city": [
        {
          "type": "autocomplete",
          "analyzer": "lucene.standard",
          "tokenization": "nGram",
          "minGrams": 1,
          "maxGrams": 50,
          "foldDiacritics": true
        }
      ]
    }
  }
}
```
