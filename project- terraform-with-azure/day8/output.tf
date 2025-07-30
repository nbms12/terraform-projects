# output "numout" {
#   value = abs(var.numnetive)
# }


# output "ceilout" {
#   value = ceil(var.ceilval)
# }

# output "maxval" {
#   value = max(var.ceilval, var.numnetive)
# }

#task1 : string manupulations removin spaces , add ypen
#task2 : add all tags and merge them and use it. 
output "formatted-resource" {
  value = azurerm_resource_group.example
}

# output "storagename" {
#   value = azurerm_storage_account.example.name
# }

###### task 4 

output "myport" {
  value = local.port-format
}


#### task 5 

output "vmsize-value" {
  value = local.env-vmsize
}


output "en-value" {
  value = var.environment
}



output "backup-name-check" {
  value = var.Backup_name
}

output "credential-leak-checker" {
  value     = var.credential-leak-test
  sensitive = true
}

output "results" {
  value = local.file_exists
}


output "myuniqueenvlist" {
  value = local.myenvset
}

output "maximum_bill_value" {
  value = local.max_bill
}


output "average_bill" {
  value = local.actual_average_bill
}


output "time_format" {
  value = local.formatted_time
}
