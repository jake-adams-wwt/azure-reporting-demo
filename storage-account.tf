resource "azurerm_storage_account" "example" {
  name                     = "st${replace(var.system_name,"-","")}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.primary_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = false
  min_tls_version = "TLS1_0"

  tags = local.common_tags
}