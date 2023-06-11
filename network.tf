resource "azurerm_virtual_network" "vnet" {
    name= "fuad-Vnet"
    location = "west europe"
    address_space = ["10.0.0.0/16"]
    resource_group_name = "BookRg"
}
resource "azurerm_subnet" "subnet" {
    name = "fuad-subnet"
    virtual_network_name = azurerm_virtual_network.vnet.name
    resource_group_name = "BookRg"
    address_prefixes = ["10.0.10.0/24"]
}