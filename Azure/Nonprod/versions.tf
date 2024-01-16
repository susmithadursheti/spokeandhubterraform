# Azure Provider source and version being used
terraform {
  required_version = ">= 1.5.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.85.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47.0"
    }
  }
}