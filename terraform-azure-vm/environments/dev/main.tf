provider "azurerm" {
  features {}
}

module "vm" {
  source              = "../../modules/vm"
  resource_group_name = "dev-resources"
  location            = "East US"
  vm_size             = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "P@ssw0rd1234"
}
