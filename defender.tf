# resource "azurerm_advanced_threat_protection" "example" {
#   target_resource_id = azurerm_storage_account.example.id
#   enabled            = true
# }


resource "azurerm_security_center_subscription_pricing" "defender_vm" {
  tier          = "Standard"
  resource_type = "VirtualMachines"
}

resource "azurerm_security_center_subscription_pricing" "defender_sql" {
  tier          = "Standard"
  resource_type = "SqlServers"
}

resource "azurerm_security_center_subscription_pricing" "defender_storage" {
  tier          = "Standard"
  resource_type = "StorageAccounts"
}