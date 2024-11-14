
resource "azurerm_virtual_machine" "name" {
  for_each                      = var.vms
  name                          = each.value.virtual_machine_name
  location                      = each.value.location
  resource_group_name           = each.value.resource_group_name
  network_interface_ids         = [data.azurerm_network_interface.example[each.key].id]
  vm_size                       = "Standard_DS1_v2"
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
# storage_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2016-datacenter-gensecond"
#     version   = "latest"
# }
  storage_os_disk {
    name              = each.value.os_disk_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = each.value.pc_name
    admin_username = "puspadmin"
    admin_password = "Rudra@20222022"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  # os_profile_windows_config{}
  tags = {
    environment = "staging"
  }
}

