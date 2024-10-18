variable "rg-name" {
  description = "Name Resource Group"
  type        = string
}

variable "location" {
    description = "Location for resources"
    type        = string
}

variable "tags_mandatorys" {
    description = "Tags requerid"
}

variable "vnet-name" {
    description = "name vnet"
    type = string
  
}

variable "vnet-gsubnet" {
  description = "name Gateway Subnet"
  type = string
}

variable "pip-vng" {
  description = "name public ip virtual network gateway"
  type = string
}

variable "vng-name" {
    description = "name Virtual Network Gateway"
    type = string
}

variable "vng-sku" {
    description = "sku Virtual Network Gateway"
    type = string
}

variable "vng-ip" {
    description = "name ip Virtual Network Gateway"
    type = string
}

variable "lng-name" {
    description = "Name local network gateway"
    type = string
}

variable "lng-g_adress" {
    description = "gateway address - local network gateway"
    type = string
}

variable "lng02-name" {
    description = "Name local network gateway 02"
    type = string
}

variable "lng02-g_adress" {
    description = "gateway address - local network gateway 02"
    type = string
}

variable "lng-conn01" {
  description = "name virtual network_gateway connection"
  type = string
}

variable "conn01-skey" {
  description = "shared_key virtual network_gateway connection 01"
  type = string
}

variable "lng-conn02" {
  description = "name virtual network_gateway connection 02"
  type = string
}

variable "conn02-skey" {
  description = "shared_key virtual network_gateway connection 02"
  type = string
}
