resource "helm_release" "kyverno" {
  name       = "kyverno"
  repository = "https://kyverno.github.io/kyverno/"
  chart      = "kyverno"
  version    = "3.1.4"

  values = [file("${path.module}/values/kyverno.yaml")]
}
