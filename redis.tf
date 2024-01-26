resource "helm_release" "redis" {
  name       = "redis"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  version    = "18.8.0"

  set {
    name  = "replica.replicaCount"
    value = "0"
  }

  set {
    name  = "auth.enabled"
    value = false
  }
}
