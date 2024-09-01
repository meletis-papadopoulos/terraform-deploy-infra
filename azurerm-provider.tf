provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "61375121-a3cf-40d6-be22-0d1039870663" # Azure subscription ID
}

# To install this provider, copy and paste this code into your Terraform configuration. Then, run "terraform init".
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}