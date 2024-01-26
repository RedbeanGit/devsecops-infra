# import helm provider
terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}

# Configure the Helm provider
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
