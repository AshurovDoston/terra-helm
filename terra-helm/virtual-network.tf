# Resource-2: Create Virtual Network
resource "azurerm_virtual_network" "myvnet" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/22"]
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  tags = {
    "Name" = "myvnet-1"
  }
}

# Resource-3: Create Subnet
resource "azurerm_subnet" "mysubnet" {
  name = "aks-subnet"
  resource_group_name = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes = [ "10.0.1.0/24" ]
}

# Resource-4: Create Subnet
resource "azurerm_subnet" "mysubnet2" {
  name = "vm-subnet"
  resource_group_name = azurerm_resource_group.myrg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes = [ "10.0.2.0/24" ]
}