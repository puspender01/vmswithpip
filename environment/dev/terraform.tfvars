rgs = {
  rg1 = { resource_group_name = "tcs1-rg"
  location = "southindia" }
}
nsgs = {
  nsg1 = {
    resource_group_name = "tcs1-rg"
    location            = "southindia"
    nsg_name            = "tcs1-nsg"
    destination_port1   = "22"
    destination_port2   = "9100"
    destination_port3   = "443"
  }
  nsg2 = {
    resource_group_name = "tcs1-rg"
    location            = "southindia"
    nsg_name            = "tcs2-nsg"
    destination_port1   = "22"
    destination_port2   = "9100"
    destination_port3   = "443"
  }
  nsg3 = {
    resource_group_name = "tcs1-rg"
    location            = "southindia"
    nsg_name            = "tcs3-nsg"
    destination_port1   = "22"
    destination_port2   = "9090"
    destination_port3   = "3000"
  }
}
vnets = {
  vnet1 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    virtual_network_name = "tcs1-vnet"
    address_space        = ["192.0.0.0/24"]
  }
}
subnets = {
  vm1 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    address_prefixes     = ["192.0.0.0/24"]
  }
  # vm2 = {
  #   resource_group_name  = "tcs1-rg"
  #   location             = "southindia"
  #   virtual_network_name = "tcs1-vnet"
  #   subnet_name          = "AzureBastionSubnet"
  #   address_prefixes     = ["192.0.0.0/25"]
  # }
}
pips = {
  vm1 = {
    resource_group_name = "tcs1-rg"
    location            = "southindia"
    pip_name            = "tcs1-pip"
  }
  vm2 = {
    resource_group_name = "tcs1-rg"
    location            = "southindia"
    pip_name            = "tcs2-pip"
  }
  vm3 = {
    resource_group_name = "tcs1-rg"
    location            = "southindia"
    pip_name            = "tcs3-pip"
  }
}
nics = {
  nic1 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    nic_name             = "tcs1-nic"
    ipc_name             = "tcs1-ipc"
    pip_name             = "tcs1-pip"

  }
  nic2 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    nic_name             = "tcs2-nic"
    ipc_name             = "tcs2-ipc"
    pip_name             = "tcs2-pip"
  }
  nic3 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    nic_name             = "tcs3-nic"
    ipc_name             = "tcs3-ipc"
    pip_name             = "tcs3-pip"

  }
}

vms = {
  vm1 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    nic_name             = "tcs1-nic"
    virtual_machine_name = "tcs1-vm"
    os_disk_name         = "tcs1-osdisk"
    nsg_name             = "tcs1-nsg"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    pc_name               ="tcs1-vm"
  }
  vm2 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    nic_name             = "tcs2-nic"
    virtual_machine_name = "tcs2-vm"
    os_disk_name         = "tcs2-osdisk"
    nsg_name             = "tcs2-nsg"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    pc_name               ="tcs2-vm"
  }
  vm3 = {
    resource_group_name  = "tcs1-rg"
    location             = "southindia"
    nic_name             = "tcs3-nic"
    virtual_machine_name = "monitor-vm"
    os_disk_name         = "tcs3-osdisk"
    nsg_name             = "tcs3-nsg"
    virtual_network_name = "tcs1-vnet"
    subnet_name          = "tcs1-subnet"
    pc_name               ="monitor-vm"

  }
}

# bastion = {
#   vm1 = {
#     bastion_name         = "my2bastion"
#     resource_group_name  = "tcs1-rg"
#     virtual_network_name = "tcs1-vnet"
#     location             = "southindia"
#     subnet_name          = "AzureBastionSubnet"
#     pip_name             = "tcs1-pip"
#   }
# }

nicnsg = {
  nicnsg1 = {
    resource_group_name = "tcs1-rg"
    nic_name            = "tcs1-nic"
    nsg_name            = "tcs1-nsg"
  }
  nicnsg2 = {
    resource_group_name = "tcs1-rg"
    nic_name            = "tcs2-nic"
    nsg_name            = "tcs2-nsg"
  }

  nicnsg3 = {
    resource_group_name = "tcs1-rg"
    nic_name            = "tcs3-nic"
    nsg_name            = "tcs3-nsg"
  }
}
