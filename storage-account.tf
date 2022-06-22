resource "azurerm_storage_account" "example" {
  name                     = "st${var.system_name}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.primary_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = false
  min_tls_version = "1.1"

  tags = common_tags
}