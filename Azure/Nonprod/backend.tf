# Define Terraform backend using a blob storage container on Microsoft Azure for storing the Terraform state
terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "spoketfbackendsa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}