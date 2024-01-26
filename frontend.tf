resource "helm_release" "frontend" {
  name       = "frontend"
  chart      = "devsecops-frontend"
  repository = "https://redbeangit.github.io/devsecops-frontend/"
  version    = "0.11.0"

  set {
    name  = "ingress.hostname"
    value = "devsecops.redbean.fr"
  }
}
