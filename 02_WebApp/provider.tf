provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "61375121-a3cf-40d6-be22-0d1039870663" # Azure subscription ID
}

# Use "azurerm" provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}