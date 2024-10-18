#Referenciar o RG existente
resource "azurerm_resource_group" "rg-azdc-tf" {
  location = var.location
  name = var.rg-name
  tags = var.tags_mandatorys
}

# Referenciar a rede virtual existente
data "azurerm_virtual_network" "existing_vnet" {
  name                = var.vnet-name
  resource_group_name = var.rg-name
}

# Referenciar a sub-rede do gateway existente
data "azurerm_subnet" "existing_gateway_subnet" {
  name                 = var.vnet-gsubnet
  virtual_network_name = var.vnet-name
  resource_group_name  = var.rg-name
}

# Criar vntg

# Criar um endereço IP público para o gateway
resource "azurerm_public_ip" "public_ip" {
  name                = var.pip-vng
  location            = var.location
  resource_group_name = var.rg-name
  allocation_method   = "Static"
}

# Criar o Virtual Network Gateway
resource "azurerm_virtual_network_gateway" "vng" {
  name                = var.vng-name
  location            = var.location
  resource_group_name = var.rg-name
  type                = "Vpn"
  vpn_type            = "RouteBased"
  active_active       = false
  enable_bgp          = false
  sku                 = var.vng-sku

  ip_configuration {
    name                          = var.vng-ip
    public_ip_address_id          = azurerm_public_ip.public_ip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = data.azurerm_subnet.existing_gateway_subnet.id
  }
}


# Criar um Local Network Gateway 01
resource "azurerm_local_network_gateway" "lng" {
  name                = var.lng-name
  location            = var.location
  resource_group_name = var.rg-name
  gateway_address     = var.lng-g_adress
  address_space       = ["10.10.0.0/16"]
}

# Criar um Local Network Gateway 02
resource "azurerm_local_network_gateway" "lng-02" {
  name                = var.lng02-name
  location            = var.location
  resource_group_name = var.rg-name
  gateway_address     = var.lng02-g_adress
  address_space       = ["10.10.0.0/16"]
}

resource "azurerm_virtual_network_gateway_connection" "connection-01" {
  dpd_timeout_seconds        = 45
  local_network_gateway_id   = azurerm_local_network_gateway.lng.id
  location                   = var.location
  name                       = var.lng-conn01
  resource_group_name        = var.rg-name
  shared_key                 = var.conn01-skey
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vng.id
}

resource "azurerm_virtual_network_gateway_connection" "connection-02" {
  dpd_timeout_seconds        = 45
  local_network_gateway_id   = azurerm_local_network_gateway.lng-02.id
  location                   = var.location
  name                       = var.lng-conn02
  resource_group_name        = var.rg-name
  shared_key                 = var.conn02-skey
  type                       = "IPsec"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.vng.id
}
