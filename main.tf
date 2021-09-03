resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

module "storage_account" {

source = "./module/Storage_Account"
  
}


