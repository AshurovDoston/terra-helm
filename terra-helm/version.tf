# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.86"
     }
    random = {
        source = "hashicorp/random"
        version = ">= 3.1.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}
}
