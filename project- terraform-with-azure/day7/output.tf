output "res_name" {
  value = azurerm_resource_group.example.name
}


output "store_names" {
  value = [for i in azurerm_storage_account.example : i.name]
}
