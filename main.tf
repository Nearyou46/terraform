terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.96.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "infra-tf"
    storage_account_name = "storage4tfbackend"
    container_name       = "tfstate"
    key                  = ""        #key=<blob key>
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
#  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  skip_provider_registration = true
  features {}
  subscription_id = "" #subs ID to do
}

# Create a resource group
resource "azurerm_resource_group" "my-resourcegroup" {
  name     = "my-resourcegroup"
  location = "West Europe"
}

