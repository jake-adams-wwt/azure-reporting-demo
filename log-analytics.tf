resource "azurerm_log_analytics_workspace" "primary" {
  name                = "log-${var.system_name}"
  location            = var.primary_location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = local.common_tags
}