# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

}

locals {
  environment = var.environment
}

locals {
  common_tags = {
    "Environment"          = local.environment,
    "Business Unit"        = var.business_unit,
    "Deployment Mechanism" = var.deployment_mechanism
    "owner"                = var.owner

  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.system_name}"
  location = var.primary_location
  tags     = local.common_tags
}