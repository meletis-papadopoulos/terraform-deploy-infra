### Terraform Template ###

# Provider -> Deploy to azurerm (source) -> (Azure Resource Manager)
provider "azurerm" {
  # Configuration options
  features {}                           # Set up authentication
  subscription_id = var.subscription_id # Azure subscription ID
}

# To install this provider, copy and paste this code into your Terraform configuration. Then, run "terraform init".
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1" # Current azurerm version
    }
  }
}