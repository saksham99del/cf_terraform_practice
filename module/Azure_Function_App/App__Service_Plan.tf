resource "azurerm_app_service_plan" "asp" {
  name                = var.App_Service_Plan_Name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

