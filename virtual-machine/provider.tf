terraform {
  required_version = "1.1.7"

  backend "local" {}

  required_providers {
    azurerm = {
      # source  = "hashicorp/azurerm"
      version = "=3.0.2"
    }
  }
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
