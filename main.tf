
data "azurerm_container_registry" "existing_acr" {
  name                = var.acr_registry_name
  resource_group_name = var.acr_resource_group_name
}

# resource group
resource "azurerm_resource_group" "replicated_rg" {
  name     = var.resource_group_name
  location = var.location
}

# service plan
resource "azurerm_service_plan" "replicated_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.replicated_rg.location
  resource_group_name = azurerm_resource_group.replicated_rg.name

  sku_name = "P1v3"

  os_type = "Linux"

  tags = {
    Environment = "dev"
  }
}

# webapp
resource "azurerm_linux_web_app" "replicated_app" {
  name                = var.web_app_name
  location            = azurerm_resource_group.replicated_rg.location
  resource_group_name = azurerm_resource_group.replicated_rg.name
  service_plan_id = azurerm_service_plan.replicated_plan.id

  site_config {
    linux_fx_version = "DOCKER|${data.azurerm_container_registry.existing_acr.login_server}/${var.acr_image_name}:${var.build_tag}"
  }

# ENVS
  app_settings = {
  }


  identity {
    type = "SystemAssigned"
  }
}
