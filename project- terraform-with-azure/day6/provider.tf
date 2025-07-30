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
  tenant_id       = "xxxxxxxxxxxcb03156393"
  subscription_id = "xxxxxxx7f50510f"
  client_id       = "xxxxxxxxxxx26f09fa4"
  client_secret   = "xxxxxxxxxxxxxx-fVdPGcbH"


}
