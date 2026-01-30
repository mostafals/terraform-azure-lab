terraform {
  required_version = ">= 1.5.0"
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "sttfstatemmm01"
    container_name       = "tfstate"
    key                  = "terraformlab.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "d0bfcbed-e3a7-43d8-8095-fe314c64bd58"

}
