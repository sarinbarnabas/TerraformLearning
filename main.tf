provider "azurerm" {
  version = "~> 1.33.1"
}

resource "azurerm_resource_group" "lab1" {
  name     = "learn-lab1"
  location = "southeastasia"
  tags = {
    environment = "training"
  }
}

resource "azurerm_storage_account" "lab1sa" {
  name                     = "sarinlearnterraformlab1"
  resource_group_name      = azurerm_resource_group.lab1.name
  location                 = "southeastasia"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}