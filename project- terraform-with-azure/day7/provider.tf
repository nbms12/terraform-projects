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
  tenant_id       = "xxxxxxxxxxxxxxxxxxx-8ccb03156393"
  subscription_id = "xxxxxxxxxxxxxxxxf505"
  client_id       = "xxxxxxxxxxxxxxxx6f09fa4"
  client_secret   = "cdcsbH"


}
