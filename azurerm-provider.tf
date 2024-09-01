# To install this provider, copy and paste this code into your Terraform configuration. Then, run "terraform init".
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  # Change with real subscription id
  subscription_id = "xxxx-xxxx-xxxx-xxxx-xxxx"
}