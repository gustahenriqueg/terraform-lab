terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

#Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = ""
  tenant_id       = ""
}
terraform {
  backend "local" {}
}