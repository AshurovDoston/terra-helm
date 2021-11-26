provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "nginx_controller" {
  name = var.nginx_ingress_controller
  repository = "https://charts.bitnami.com/bitnami"
  chart = "nginx-ingress-controller"

  set {
    name = "service.type"
    value = "ClusterIP"
  }
}