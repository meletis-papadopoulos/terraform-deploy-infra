# Use "azurerm" provider
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
  subscription_id = "61375121-a3cf-40d6-be22-0d1039870663"
}

# Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Service Plan
resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

# App Service
resource "azurerm_app_service" "example" {
  # The name for the App Service, should be globally unique
  name                = var.app_service_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  # The "id" property will be generated when the resource (app service plan) is deployed
  # App service plan will be created first and then app service
  app_service_plan_id = azurerm_app_service_plan.example.id

  # Configuration for the App Service
  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  # Additional settings for the app service (i.e. environment variables)
  app_settings = {
    "SOME_KEY" = "some-value"
  }

  # Connect to a DB
  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}