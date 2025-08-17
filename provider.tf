terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rgkulvinder"
    storage_account_name = "stgkulvinder3"
    container_name       = "container1"
    key                  = "first.tfstate"
  }

}

provider "azurerm" {
  subscription_id = "2e333137-3307-4678-a744-a2d37508c632"
  features {}
}