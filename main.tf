resource "azurerm_resource_group" "group_1" {
  name     = var.rg1
  location = var.rg_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.group_1.name
  location                 = azurerm_resource_group.group_1.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_resource_group" "group_2" {
  name     = var.rg2
  location = var.rg_location
}