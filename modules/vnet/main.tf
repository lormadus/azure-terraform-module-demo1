resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.rgname
  location            = var.location
  address_space       = var.address_space
  tags = {
    environment = "Production"
  }
}
