
#TODO: replace names

# data "azurerm_management_group" "parent_management_group" {
#   #   name = "GET-Cloud"
#   display_name = "GET Cloud"
# }


resource "azurerm_management_group" "management_group" {
  name         = var.management_group_name
  display_name = var.management_group_display_name
  #   parent_management_group_id = data.azurerm_management_group.parent_management_group.id
}


# data "azurerm_billing_enrollment_account_scope" "example" {
#   billing_account_name    = "1234567890"
#   enrollment_account_name = "0123456"
# }

# resource "azurerm_subscription" "example" {
#   subscription_name = "My Example EA Subscription"
#   billing_scope_id  = data.azurerm_billing_enrollment_account_scope.example.id
# }

# resource "azurerm_management_group_subscription_association" "example" {
#   management_group_id = data.azurerm_management_group.example.id
#   subscription_id     = data.azurerm_subscription.example.id
# }