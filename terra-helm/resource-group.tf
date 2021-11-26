# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  # name = "myrg-1"
  name = var.resource_group_name
  location = "East US"
}

