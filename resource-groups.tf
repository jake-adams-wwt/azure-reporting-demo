# resource "azurerm_resource_group" "resource_groups" {
#   for_each = toset(var.business_units)
#   name     = "rg-${lower(replace(replace(each.key, "/", "-"), " ", "-"))}"
#   location = var.primary_location
#   tags = {
#     "Environment"   = local.environment,
#     "Business Unit" = each.key,
#     # "Deployment Mechanism" = var.deployment_mechanism
#   }
# }

# resource "azurerm_resource_group" "it_shared_services" {
#   name     = "rg-it-shared-services"
#   location = var.primary_location
#   tags = {
#     "Environment"   = local.environment,
#     "Business Unit" = "IT Shared Services",
#     # "Deployment Mechanism" = var.deployment_mechanism
#   }
# }


# resource "azurerm_resource_group" "policy_test" {
#   name     = "rg-policy-test-tf"
#   location = var.primary_location
#   tags = {
#     "Environment"   = local.environment,
#     "Business Unit" = "test",
#     # "Deployment Mechanism" = var.deployment_mechanism
#   }
# }
