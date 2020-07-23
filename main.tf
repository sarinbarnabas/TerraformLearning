provider "azurerm" {
  version = "~> 1.33.1"
}

resource "azurerm_resource_group" "lab2" {
  name     = var.rg
  location = var.loc
  tags = var.tags
}

resource "azurerm_storage_account" "lab2sa" {
  name                     = var.sa
  resource_group_name      = azurerm_resource_group.lab2.name
  location                 = var.loc
  account_tier             = "Standard"
  account_replication_type = "LRS"
}