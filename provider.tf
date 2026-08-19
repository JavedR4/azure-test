terraform {
  required_version = ">= 1.15.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstatejavedr2026"
    container_name       = "tfstate"
    key                  = "azure-test.tfstate"

    use_azuread_auth = true
  }
}
