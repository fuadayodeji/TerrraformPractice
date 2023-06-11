resource "azurerm_resource_group" "rg" {

    name = "BookRg"
    location = "west europe"
    tags{
        environment = "Terraform Azure"
    }
}