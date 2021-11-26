# Resource-5: Random String
resource "random_string" "myrandom" {
  length  = 10
  upper   = false
  special = false
}

# Resource-6: Azure Storage Account 
resource "azurerm_storage_account" "mysa" {
  name = "mysa${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.myrg.name
  location                 = azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true  
}

resource "azurerm_storage_container" "mysc" {
  name                  = "mysc${random_string.myrandom.id}"
  storage_account_name  = azurerm_storage_account.mysa.name
  container_access_type = "blob"
}