//count meta aruments andn conditional expressions
resource "azurerm_resource_group" "example" {
  name     = "${var.environment}-resources"
  location = var.my_loc
  lifecycle {
    create_before_destroy = true
  }
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
  for_each                 = var.storage_names
  name                     = each.value
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  lifecycle {
    #create_before_destroy = true
    #ignore_changes        = [tags]
    # precondition {
    #   condition     = contains(var.location_list, var.my_loc)
    #   error_message = "location is not in desired list, enter valid one."
    # }
    prevent_destroy = false
  }
  tags = {
    environment = var.environment
  }

}


resource "azurerm_network_security_group" "example" {
  name                = var.environment == "staging1" ? "staging1-nsg" : "default-nsg"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
