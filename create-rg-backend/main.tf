terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "rg-tfstate"
  location = "eastus2"
}

resource "azurerm_storage_account" "default" {
  name                     = "stterraformstategu"
  resource_group_name      = azurerm_resource_group.default.name
  location                 = azurerm_resource_group.default.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "default" {
  name                  = "tfstateterraform"
  storage_account_name  = azurerm_storage_account.default.name
  container_access_type = "private"
}