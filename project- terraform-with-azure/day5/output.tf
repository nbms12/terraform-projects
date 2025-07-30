output "res_name" {
  value = azurerm_resource_group.example.name
}
output "vnet" {
  value = azurerm_virtual_network.main.name
}

output "mysubnets" {
  value = azurerm_subnet.internal.name
}

output "mynetInterfaces" {
  value = azurerm_network_interface.main.name
}

output "myVMs" {
  value = azurerm_virtual_machine.main.name
}


 