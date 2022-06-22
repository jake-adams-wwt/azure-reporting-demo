resource "azurerm_purview_account" "purview_example" {
  name                = "pur-${var.system_name}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = var.purview_location

  identity {
    type = "SystemAssigned"
  }
  tags = local.common_tags
}