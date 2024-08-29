terraform {
  backend "azurerm" {
    resource_group_name  = "tf_state"
    storage_account_name = "tfstatemel"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}