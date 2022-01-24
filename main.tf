provider "azurerm" {
  features {}
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "user20-module-rg"
    location = "koreacentral"
}


#Create VNET
module "vnet" {
  source    = "./modules/vnet"
  vnet_name = "user20-vnet"
  rgname    = azurerm_resource_group.rg.name
  location  = azurerm_resource_group.rg.location
  address_space = ["10.0.0.0/16"]
}

#Create Storage Account
module "storage_account" {
  source    = "./modules/storage-account"

  saname    = "user20storagedemo"
  rgname    = azurerm_resource_group.rg.name
  location  = azurerm_resource_group.rg.location
}


#Create Storage Account2
module "storage_account2" {
  source    = "./modules/storage-account"

  saname    = "user20storagedemo2"
  rgname    = azurerm_resource_group.rg.name
  location  = azurerm_resource_group.rg.location
}
