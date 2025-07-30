terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  backend "azurerm" {
    # use_cli          = true # Can also be set via `ARM_USE_CLI` environment variable.
    # use_azuread_auth = true # Can also be set via `ARM_USE_AZUREAD` environment variable.
    # tenant_id            = "00000000-0000-0000-0000-000000000000"  # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
    storage_account_name = "day04store" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    resource_group_name  = "tfstate-day04"
    container_name       = "tfstate"               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
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


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

variable "environment" {
  type    = string
  default = "staging"

}
resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.environment
  }
}


output "res_name" {
  value = azurerm_resource_group.example.name
}
