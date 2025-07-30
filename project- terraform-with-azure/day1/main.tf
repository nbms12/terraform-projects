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
  tenant_id = "21d92bdb-6bc0-47f4-8ca1-8ccb03156393"
  # subscription_id = "......53e6965c-8261-4665-9d64........"
  # client_id       = ".....f74562df-824a......"
  # client_secret   = "....STp8Q~vxbk~aBQUY5wCA...."


}





resource "azurerm_resource_group" "example" {
  name     = "terraform-test"
  location = "South India"
}

resource "azurerm_storage_account" "example2" {
  name                     = "mystorage12"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "devs"
  }
}
