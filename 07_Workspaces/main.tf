resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_names[terraform.workspace] # Mapping to the workspace name (Dev, Test, Prod)
  location = "westeurope"
}