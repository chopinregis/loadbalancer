output "resource_group_name" {
  value = azurerm_resource_group.example_rg.name
}


# Configuration for Azure provider and credentials (replace with your actual values)
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.70.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true

  subscription_id = "your_subscription_id"
  client_id       = "your_client_id"
  client_secret   = "your_client_secret"
  tenant_id       = "your_tenant_id"
}

# Resource definition (example: create a resource group)
resource "azurerm_resource_group" "example_rg" {
  name     = "example-resource-group"
  location = "East US"
}

# Output definition to capture the resource group name
output "resource_group_name" {
  value = azurerm_resource_group.example_rg.name
}
