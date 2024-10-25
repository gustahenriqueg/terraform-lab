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