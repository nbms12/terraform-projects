locals {
  formatted_resource_name = lower(replace(var.resname, " ", "-"))
  mytags                  = merge(var.default-tags, var.environment-tags)
  storage-acc-format      = lower(substr(var.mystorageaccount, 0, 23))
  mylocationsname         = lower(azurerm_resource_group.example.location)
  myportlist              = split(",", (var.myports))
  port-format             = join("-", ([for port in local.myportlist : "port-${port}"]))
  env-vmsize              = lookup(var.vmsizelist, var.environment, lower("Dev"))
  //file_path               = "azuredevops/terraform-daily/day11/main.tf"
  ## task 8 
  dir_path    = dirname("azuredevops/terraform-daily/day11/main2.tf") # Extracts directory
  file_exists = fileexists("${local.dir_path} / main.tf")             # Checks if file exists

  ##
  myenvset = toset(concat(["Central india", "Central india", "Canada Central"]))

  ##
  mybills             = [-50, 100, 75, 200]
  total_positive      = [for cost in local.mybills : abs(cost)]
  max_bill            = max(local.total_positive...)
  avera_bill          = sum(local.total_positive)
  bill_2              = length(local.total_positive)
  actual_average_bill = local.avera_bill / local.bill_2

  ###
  current_time        = timestamp()
  formatted_time      = formatdate("DD MM YYYY hh:mm ZZZ", timeadd(local.current_time, "5h30m"))


}
resource "azurerm_resource_group" "example" {
  name     = "${local.formatted_resource_name}-rg"
  location = "Central India"
  tags     = local.mytags

}

# resource "azurerm_virtual_network" "main" {
#   name                = "my-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "internal" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.main.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "main" {
#   name                = "my-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "testconfiguration1"
#     subnet_id                     = azurerm_subnet.internal.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# resource "azurerm_virtual_machine" "main" {
#   name                  = "my-vm"
#   location              = azurerm_resource_group.example.location
#   resource_group_name   = azurerm_resource_group.example.name
#   network_interface_ids = [azurerm_network_interface.main.id]
#   vm_size               = var.vmvalidation
#   # Uncomment this line to delete the OS disk automatically when deleting the VM
#   # delete_os_disk_on_termination = true

#   # Uncomment this line to delete the data disks automatically when deleting the VM
#   # delete_data_disks_on_termination = true

#   storage_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-jammy"
#     sku       = "22_04-lts"
#     version   = "latest"
#   }
#   storage_os_disk {
#     name              = "myosdisk1"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "hostname"
#     admin_username = "testadmin"
#     admin_password = "Password1234!"
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# tags = {
# environment = var.environment
# }



