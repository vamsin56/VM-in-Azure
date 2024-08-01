provider "azurerm" {
  features {}
}

module "vm" {
  source              = "../../modules/vm"
  resource_group_name = "prod-resources"
  location            = "West Europe"
  vm_size             = "Standard_DS2_v2"
  admin_username      = "prodadmin"
  admin_password      = "S3cureP@ssw0rd!"
}
