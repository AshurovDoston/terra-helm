resource "local_file" "kubeconfig" {
  depends_on = [
    azurerm_kubernetes_cluster.myaks
  ]
  filename = "kubeconfig"
  content = azurerm_kubernetes_cluster.myaks.kube_config_raw
}
