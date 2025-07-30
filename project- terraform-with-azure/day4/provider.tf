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
  tenant_id       = "........b03156393"
  subscription_id = "..........7f50510xxxf"
  client_id       = "...........4526f09fa4"
  client_secret   = "....pPvr5-fVdPGcbH"


}
