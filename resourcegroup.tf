resource "azurerm_resource_group" "rgoctobermcit" {
  name     = var.resource_group_name
  location = "canadacentral"
}


resource "azurerm_network_security_group" "rgoctobermcit" {
  name                = "rgoctobermcit-security-group"
  location            = azurerm_resource_group.rgoctobermcit.location
  resource_group_name = azurerm_resource_group.rgoctobermcit.name
}

resource "azurerm_virtual_network" "rgoctobermcit" {
  name                = "example-network"
  location            = azurerm_resource_group.rgoctobermcit.location
  resource_group_name = azurerm_resource_group.rgoctobermcit.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
    security_group   = azurerm_network_security_group.rgoctobermcit.id
  }

  tags = {
    environment = "Production"
  }
}
