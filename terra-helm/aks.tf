resource "azurerm_kubernetes_cluster" "myaks" {
  name = var.cluster_name
  location = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  dns_prefix = "dns-${random_string.myrandom.id}"

  default_node_pool {
    name = "mypool"
    node_count = 1
    vm_size = "Standard_B2s"
    vnet_subnet_id = azurerm_subnet.mysubnet.id
  }

  network_profile {
    network_plugin = "kubenet"
    load_balancer_sku = "Standard"
    service_cidr = "10.0.0.0/24"
    docker_bridge_cidr = "172.17.0.1/16"
    dns_service_ip = "10.0.0.10"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    "Environment" = "Production"
  }
}