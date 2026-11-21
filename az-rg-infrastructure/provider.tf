terraform {
    required_version = ">=1.6.0"

    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = ">=5.0.0"
      }
    }
}

provider "azurerm" {
  features {}
  subscription_id = "453f09cc-5afa-481e-8340-61839b6b323c"
}