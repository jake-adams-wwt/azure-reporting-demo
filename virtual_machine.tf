resource "azurerm_network_interface" "main" {
  name                = "nic-${var.system_name}"
  location            = var.primary_location
  resource_group_name = azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnet_servers
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  name                  = "vm-${var.system_name}"
  location              = var.primary_location
  resource_group_name   = azurerm_resource_group.resource_group
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_B1ms"

  #   Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  #   Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  #   os_profile_linux_config {
  #     disable_password_authentication = false
  #   }
  tags = local.common_tags
}