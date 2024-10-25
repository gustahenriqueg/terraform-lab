resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.location
  tags     = var.tags_mandatorys
}

#Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  address_space       = ["192.168.100.0/22"]
  location            = var.location
  resource_group_name = var.rg-name
  depends_on = [ azurerm_resource_group.rg ]
}

# Criar uma sub-rede
resource "azurerm_subnet" "subnet" {
  name                 = "dc-azure"
  resource_group_name  = var.rg-name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["192.168.101.0/24"]
}

# Criar a sub-rede do gateway
resource "azurerm_subnet" "gateway_subnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = var.rg-name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["192.168.100.0/24"]
}
