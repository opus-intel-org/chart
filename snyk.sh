skaffold render --output render.yaml
snyk iac test render.yaml
rm render.yaml
