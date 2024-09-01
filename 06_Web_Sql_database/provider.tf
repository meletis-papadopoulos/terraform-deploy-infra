provider "azurerm" {
  features {}
  subscription_id = "61375121-a3cf-40d6-be22-0d1039870663"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}