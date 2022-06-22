resource "azurerm_storage_account" "storage_account" {
  name                     = "st${replace(var.system_name,"-","")}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.primary_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = false
  min_tls_version = "TLS1_0"

  tags = local.common_tags
}

data "azurerm_monitor_diagnostic_categories" "storage_account_diag_cat" {
  resource_id = azurerm_storage_account.storage_account.id
}


# resource "azurerm_monitor_diagnostic_setting" "storage_account_diag" {
#   name               = "diag-${azurerm_storage_account.storage_account.name}"
#   target_resource_id = azurerm_storage_account.storage_account.id
#   log_analytics_workspace_id = azurerm_log_analytics_workspace.primary.id
# #   storage_account_id = data.azurerm_storage_account.example.id

#   log {
#     category = "Administrative"
#     # enabled  = false

#     retention_policy {
#       enabled = false
#     }
#   }

#   metric {
#     category = "AllMetrics"

#     retention_policy {
#       enabled = false
#     }
#   }
# }