terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "azureorg"

    workspaces {
      name = "cicdwork"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "resource_group01"
  location = "East US"
  tags = {
    Environment = Dev
  }
}
