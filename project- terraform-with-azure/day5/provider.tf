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
  tenant_id       = "...........03156393"
  subscription_id = "..........7f50510f"
  client_id       = "xxxxxxxxxxxxxxx4526f09fa4"
  client_secret   = "xxxxxxxxxx5-fVdPGcbH"


}
