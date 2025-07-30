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
  tenant_id       = "21d92bdb-6bc0-47f4-8ca1-8ccb03156393"
  subscription_id = "53e6965c-8261-4665-9d64-e8c07f50510f"
  client_id       = "f74562df-824a-4bfc-ab71-614526f09fa4"
  client_secret   = "STp8Q~vxbk~aBQUY5wCA9lg51rpPvr5-fVdPGcbH"


}
