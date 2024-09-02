# Create a resource group ("resource keyword")
# The reference name of the resource group is "rg"
resource "azurerm_resource_group" "rg" {
  name     = "myFirstResourceGroup"
  location = "westeurope"
}