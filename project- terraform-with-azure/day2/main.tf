terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  # backend "azurerm" {
  #   # use_cli          = true # Can also be set via `ARM_USE_CLI` environment variable.
  #   # use_azuread_auth = true # Can also be set via `ARM_USE_AZUREAD` environment variable.
  #   # tenant_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
  #   storage_account_name = "day04store" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  #   resource_group_name  = "tfstate-day04"
  #   container_name       = "tfstate"               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  #   key                  = "dev.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  # }
  required_version = "1.12.2"

}
provider "azurerm" {
  features {}
  tenant_id       = "/......b03156393"
  subscription_id = "..........07f50510....."
  client_id       = ".......4526f09fa4"
  client_secret   = "...............5-fVdPGcbH"


}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}


