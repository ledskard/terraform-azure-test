output "resource_group_name" {
  value = azurerm_resource_group.replicated_rg.name
}

output "app_service_plan_id" {
  value = azurerm_service_plan.replicated_plan.id
}

output "web_app_url" {
  value = "azurerm_linux_web_app.replicated_app.default_site_hostname"
}
