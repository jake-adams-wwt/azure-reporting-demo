resource "azurerm_network_interface" "main" {
  name                = "nic-${var.system_name}"
  location            = var.primary_location
  resource_group_name = azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet_servers.id
    private_ip_address_allocation = "Dynamic"
  }
  tags = local.common_tags
}

# resource "azurerm_virtual_machine" "main" {
#   name                  = "vm-${var.system_name}"
#   location              = var.primary_location
#   resource_group_name   = azurerm_resource_group.resource_group.name
#   network_interface_ids = [azurerm_network_interface.main.id]
#   vm_size               = "Standard_B1ms"

#   #   Uncomment this line to delete the OS disk automatically when deleting the VM
#   delete_os_disk_on_termination = true

#   #   Uncomment this line to delete the data disks automatically when deleting the VM
#   delete_data_disks_on_termination = true

#   storage_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer     = "WindowsServer"
#     sku       = "2022-Datacenter"
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
#   #   os_profile_linux_config {
#   #     disable_password_authentication = false
#   #   }
#   tags = local.common_tags
# }


resource "azurerm_windows_virtual_machine" "example" {
  name                  = "vm-${substr(var.system_name, 0, 12)}"
  location              = var.primary_location
  resource_group_name   = azurerm_resource_group.resource_group.name
  network_interface_ids = [azurerm_network_interface.main.id]
  size                  = "Standard_B1ms"


  admin_username = "adminuser"
  admin_password = "P@$$w0rd1234!"

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }

  tags = local.common_tags
}

# resource "azurerm_advanced_threat_protection" "vm_defender" {
#   target_resource_id = azurerm_windows_virtual_machine.example.id
#   enabled            = true
# }

# resource "azurerm_virtual_machine_extension" "da" {
#   name                       = "DAExtension"
#   virtual_machine_id         = azurerm_windows_virtual_machine.example.id
#   publisher                  = "Microsoft.Azure.Monitoring.DependencyAgent"
#   type                       = "DependencyAgentWindows"
#   type_handler_version       = "9.10"
#   auto_upgrade_minor_version = true
#   tags                       = local.common_tags
# }


resource "azurerm_virtual_machine_extension" "mmaagent" {
  name                       = "mmaagent"
  virtual_machine_id         = azurerm_windows_virtual_machine.example.id
  publisher                  = "Microsoft.EnterpriseCloud.Monitoring"
  type                       = "MicrosoftMonitoringAgent"
  type_handler_version       = "1.0"
  auto_upgrade_minor_version = "true"
  settings                   = <<SETTINGS
    {
      "workspaceId": "${azurerm_log_analytics_workspace.primary.id}"
    }
SETTINGS   
  protected_settings         = <<PROTECTED_SETTINGS
   {
      "workspaceKey": "${azurerm_log_analytics_workspace.primary.primary_shared_key}"
   }
PROTECTED_SETTINGS
}