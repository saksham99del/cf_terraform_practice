resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
}

module "storage_account" {

  source               = "./module/Storage_Account"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location

}

module "storage_account_2" {

  source               = "./module/Storage_Account_2"
  storage_account_name = var.storage_account_name_2
  resource_group_name  = var.resource_group_name
  location             = var.location

}

module "Azure_Function_App" {

  source = "./module/Azure_Function_App"

}


