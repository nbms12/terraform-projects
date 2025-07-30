terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  required_version = "1.12.2"
}

provider "azurerm" {
  features {}
  tenant_id       = "xxxxxxxxxxxx8ca1-8ccb03156393"
  subscription_id = "53e6xxxxxxxxxxxxxxxxxxxx50510f"
  client_id       = "xxxxxxxxxxxxxxxxxxx4"
  client_secret   = "xxxxxxxxxxxxxxxxxxcbH"


}
