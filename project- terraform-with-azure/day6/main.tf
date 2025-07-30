//count meta aruments andn loop
resource "azurerm_resource_group" "example" {
  name     = "${var.environment}-resources"
  location = var.location_list[1]
}

#Count Vs Foreach  take the actual len of storage names in var and asssin wit index value.


# resource "azurerm_storage_account" "example" {
#   name                     = var.storage_names[count.index]
#   count                    = length(var.storage_names)
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = var.environment
#   }
# }

resource "azurerm_storage_account" "example" {
  for_each = var.storage_names
  name = each.value
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = var.environment
  }
}
 