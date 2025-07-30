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
  tenant_id       = "xxxxxxxxx6393"
  subscription_id = "xxxx510f"
  client_id       = "xxxxxxxxxxxxxxxx9fa4"
  client_secret   = "xxxxxxxxxxxxxxxxxx-fVdPGcbH"


}
