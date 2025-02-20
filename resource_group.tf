# resource_group.tf

resource "azurerm_resource_group" "RG" {
  name     = "RG"
  location = "East US"
}