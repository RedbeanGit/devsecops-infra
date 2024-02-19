# Devsecops infrastructure

This repository contains the infrastructure code for the devsecops project.

## Requirements

- [Terraform](https://www.terraform.io/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Linkerd](https://linkerd.io/2/getting-started/)
- A Kubernetes cluster

## Usage

### Deploy

```bash
terraform init
terraform apply
```

### Test

Update your /etc/hosts file to point the domain to the load balancer IP of the ingress controller

```bash
echo "$INGRESS_EXTERNAL_IP devsecops.redbean.fr" | sudo tee -a /etc/hosts
echo "$INGRESS_EXTERNAL_IP api.devsecops.redbean.fr" | sudo tee -a /etc/hosts
```

## Service Mesh

### Setup

Setup Linkerd service mesh

```bash
linkerd install | kubectl apply -f -
```

Update the deployment to use the Linkerd proxy

```bash
kubectl get deploy -o yaml | linkerd inject - | kubectl apply -f -
```

### Visualize

Visualize the service mesh

```bash
linkerd viz dashboard
```
