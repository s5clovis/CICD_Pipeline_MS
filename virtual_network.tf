# virtual_network.tf

# Create a Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "example-vnet"                     # Name of the Virtual Network
  address_space       = ["10.0.0.0/16"]                    # Address space for the VNet
  location            = azurerm_resource_group.RG.location # Use the location of the resource group
  resource_group_name = azurerm_resource_group.RG.name     # Use the name of the resource group
}