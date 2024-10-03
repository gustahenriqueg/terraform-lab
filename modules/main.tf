terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

#Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "my-id"
  tenant_id = "my-tenant_id"
}
terraform {
  backend "local" {}
}