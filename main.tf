resource "azurerm_resource_group" "rg" {
  name     = local.resource_group_name
  location = var.location
}



resource "azurerm_app_service_plan" "asp" {
  name                = local.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}



module "Azure_Function_App" {

  source                = "./module/Azure_Function_App"
  storage_account_name  = local.storage_account_name
  resource_group_name   = local.resource_group_name
  location              = var.location
  App_Service_Plan_Name = local.app_service_plan_name
  Function_App_Name     = local.function_app_name
  app_insight_name      = local.app_insight_name


}


