resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
}

module "storage_account" {

  source               = "./module/Storage_Account"
  storage_account_name = local.storage_account_name #local
  resource_group_name  = local.resource_group_name  # azurerm_resource_group.rg.id
  location             = var.location

}

module "storage_account_2" {

  source               = "./module/Storage_Account_2"
  storage_account_name = local.storage_account_name_2 #local
  resource_group_name  = local.resource_group_name    #local
  location             = var.location

}

module "Azure_Function_App" {

  source = "./module/Azure_Function_App"
  storage_account_name= local.storage_account_name
  resource_group_name=local.resource_group_name
  location=var.location
  App_Service_Plan_Name=local.App_Service_Plan_Name
  Function_App_Name=local.Function_App_Name


}


