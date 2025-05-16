terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "newssingh9_rg_joi_interview"
    storage_account_name = "newssingh9sajoiinterview"
    container_name       = "newssingh9terraformcontainerjoiinterview"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}