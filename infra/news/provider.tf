# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.99"
    }
  }

  backend "azurerm" {
    resource_group_name  = "newssingh9_rg_joi_interview"
    storage_account_name = "newssingh9sajoiinterview"
    container_name       = "newssingh9terraformcontainerjoiinterview"
    key                  = "news/terraform.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "86d6ac29-e996-4a8e-8dc1-b84df0a579c1"
  tenant_id       =  "1837b987-8c13-42e3-aeec-3321b9d8529d"
}

data "azurerm_resource_group" "azure-resource" {
  name = "newssingh9_rg_joi_interview"
}

