# # resource "azurerm_resource_group_policy_assignment" "cis" {
# #   name              = "CIS Microsoft Azure Foundations Benchmark v1.3.0 test"
# #   resource_group_id = azurerm_resource_group.policy_test.id
# #   # policy_definition_id = azurerm_policy_definition.example.id
# #   policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/612b5213-9160-4969-8578-1518bd2a000c"
# #   identity {
# #     type = "SystemAssigned"
# #   }
# #   location = var.primary_location
# # }

resource "azurerm_resource_group_policy_assignment" "cis" {
  name              = "CIS Microsoft Azure Foundations Benchmark v1.3.0 test"
  resource_group_id = azurerm_resource_group.resource_group.id
  # policy_definition_id = azurerm_policy_definition.example.id
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/612b5213-9160-4969-8578-1518bd2a000c"
  identity {
    type = "SystemAssigned"
  }
  location = var.primary_location
}

# resource "azurerm_management_group_policy_assignment" "cis" {
#   name                 = "CIS Foundations v1.3.0"
#   policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/612b5213-9160-4969-8578-1518bd2a000c"
#   management_group_id  = azurerm_management_group.management_group.id
#   identity {
#     type = "SystemAssigned"
#   }
#   location = var.primary_location
# }

# resource "azurerm_management_group_policy_assignment" "nist_800_171" {
#   name                 = "NIST SP 800-171 Rev. 2"
#   policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/03055927-78bd-4236-86c0-f36125a10dc9"
#   management_group_id  = azurerm_management_group.management_group.id
#   identity {
#     type = "SystemAssigned"
#   }
#   location = var.primary_location

#   parameters = <<PARAMETERS
#     {
#         "membersToExcludeInLocalAdministratorsGroup": {
#           "value": ""
#         },
#         "membersToIncludeInLocalAdministratorsGroup": {
#           "value": ""
#         },
#         "logAnalyticsWorkspaceIDForVMAgents": {
#           "value": "${azurerm_log_analytics_workspace.primary.id}"
#         }
#     }
#     PARAMETERS

# }



# # resource "azurerm_resource_group_policy_assignment" "nist_800_171" {
# #   name                 = "NIST SP 800-171 Rev. 2"
# #   policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/03055927-78bd-4236-86c0-f36125a10dc9"
# #   resource_group_id    = azurerm_resource_group.policy_test.id
# #   identity {
# #     type = "SystemAssigned"
# #   }
# #   location   = var.primary_location
# #   parameters = <<PARAMETERS
# #     {
# #         "membersToExcludeInLocalAdministratorsGroup": {
# #           "value": ""
# #         },
# #         "membersToIncludeInLocalAdministratorsGroup": {
# #           "value": ""
# #         },
# #         "logAnalyticsWorkspaceIDForVMAgents": {
# #           "value": "${azurerm_log_analytics_workspace.primary.id}"
# #         }
# #     }
# #     PARAMETERS
# # }

# resource "azurerm_management_group_policy_assignment" "nist_800_53" {
#   name                 = "NIST SP 800-53 Rev. 5"
#   policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/612b5213-9160-4969-8578-1518bd2a000c"
#   management_group_id  = azurerm_management_group.management_group.id
#   identity {
#     type = "SystemAssigned"
#   }
#   location = var.primary_location
# }

# resource "azurerm_resource_group_policy_assignment" "allowed_vm_sizes" {
#   name                 = "Allowed VM size SKUs"
#   policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/cccc23c7-8427-4f53-ad12-b6a63eb452b3"
#   resource_group_id    = azurerm_resource_group.policy_test.id
#   identity {
#     type = "SystemAssigned"
#   }
#   location   = var.primary_location
#   parameters = <<PARAMETERS
#     {
#         "listOfAllowedSKUs": {
#           "value": [
#             "standard_d1",
#             "standard_d1_v2",
#             "standard_ds4",
#             "standard_ds4_v2",
#             "standard_b2s"
#           ]
#         }
#     }
#     PARAMETERS
# }


# # "/providers/Microsoft.Authorization/policyDefinitions/cccc23c7-8427-4f53-ad12-b6a63eb452b3",
# #     "Allowed virtual machine size SKUs"




