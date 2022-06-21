resource "azurerm_log_analytics_workspace" "primary" {
  name                = "log-${var.system_name}"
  location            = var.primary_location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags = {
    "Environment"   = local.environment,
    "Business Unit" = "IT Shared Services",
    # "Deployment Mechanism" = var.deployment_mechanism
    "Owner" = "adamsjac" #TODO: remove
  }
}