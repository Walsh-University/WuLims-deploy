# ArgoCD Lab Manifests

## This repository contains the manifests required to set up an ArgoCD lab environment using Kustomize.


There is a makefile to run kustomize and render the lab manifests.
To render the lab manifests, run the following command:
```bash
make render-lab
```

The manifests use SOPS to manage encrypted secrets with an
age key.  You will need to have the original age private key 
to decrypt the secrets.


## Requirements:

- Kubernetes cluster (Minikube, Kind, etc.)
- Kustomize installed
- kubectl installed
- ArgoCD installed in the cluster
- Make installed
- age Installed to decrypt SOPS secrets
- SOPS to manage encrypted secrets
- KSOPS to integrate Kustomize with SOPS

## ArgoCD

ArgoCD Must be installed in the cluster and configured to use
KSOPS in order to pull the manifests from this repository.

The manifests use SOPS encrypted secrets, so ArgoCD must be configured
to use KSOPS to decrypt the secrets when deploying the manifests.


