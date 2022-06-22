resource "azurerm_log_analytics_solution" "sentinel" {
  solution_name         = "SecurityInsights"
  location              = var.primary_location
  resource_group_name   = azurerm_resource_group.resource_group
  workspace_resource_id = azurerm_log_analytics_workspace.primary.id
  workspace_name        = azurerm_log_analytics_workspace.primary.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityInsights"
  }
}