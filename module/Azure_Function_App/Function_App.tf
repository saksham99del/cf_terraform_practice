resource "azurerm_function_app" "fa" {
  name                       = var.Function_App_Name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.example.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = azurerm_storage_account.fa.primary_access_key
}