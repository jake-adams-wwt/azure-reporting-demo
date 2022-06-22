resource "azurerm_mssql_server" "main" {
  name                         = "sql-${var.system_name}"
  location                     = var.primary_location
  resource_group_name          = azurerm_resource_group.resource_group.name
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

  tags = {
    environment = "production"
  }
}

# resource "azurerm_storage_account" "example" {
#   name                     = "examplesa"
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }

resource "azurerm_mssql_database" "db" {
  name                = "sql-${var.system_name}"
  server_id         = azurerm_mssql_server.main.id

  #   extended_auditing_policy {
  #     storage_endpoint                        = azurerm_storage_account.example.primary_blob_endpoint
  #     storage_account_access_key              = azurerm_storage_account.example.primary_access_key
  #     storage_account_access_key_is_secondary = true
  #     retention_in_days                       = 6
  #   }
}

