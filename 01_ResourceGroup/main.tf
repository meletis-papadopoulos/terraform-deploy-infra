# Terraform Template

# Provider -> Deploy to azurerm (source) -> (Azure Resource Manager)
provider "azurerm" {
  features {}                                              # Set up authentication
  subscription_id = "61375121-a3cf-40d6-be22-0d1039870663" # Azure subscription ID
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1" # Current azurerm version
    }
  }
}

# Create a resource group ("resource keyword")
resource "azurerm_resource_group" "rg" {
  name     = "myFirstResourceGroup"
  location = "westeurope"
}