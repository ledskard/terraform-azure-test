resource "azurerm_role_assignment" "acr_pull" {
  principal_id         = azurerm_linux_web_app.replicated_app.identity[0].principal_id
  role_definition_name = "AcrPull"
  scope                = data.azurerm_container_registry.existing_acr.id
}