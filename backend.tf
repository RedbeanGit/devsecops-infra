resource "helm_release" "backend" {
  name       = "backend"
  chart      = "devsecops-backend"
  repository = "https://redbeangit.github.io/devsecops-backend/"
  version    = "0.13.0"

  set {
    name  = "ingress.hostname"
    value = "api.devsecops.redbean.fr"
  }

  set {
    name  = "redis.host"
    value = "redis-master"
  }

  set {
    name  = "redis.port"
    value = "6379"
  }
}
