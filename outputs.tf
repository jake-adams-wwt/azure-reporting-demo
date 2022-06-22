output "storage_account_diag_cat_logs" {
  value = data.azurerm_monitor_diagnostic_categories.storage_account_diag_cat.logs
}

output "storage_account_diag_cat_monitor" {
  value = data.azurerm_monitor_diagnostic_categories.storage_account_diag_cat.metrics
}