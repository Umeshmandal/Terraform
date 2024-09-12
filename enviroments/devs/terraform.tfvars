AZVMS1 = {
  VM1 = {
    rg_name                         = "Develectric-RG"
    location                        = "westus2"
    storageacc_name                 = "develectricstgaccount1"
    account_tirr                    = "Standard"
    account_replication_type        = "LRS"
    VNet_name                       = "Develectric-VNet"
    address_space                   = ["10.0.0.0/16"]
    Subnet_name                     = "Develectric-frontsubnet"
    address_prefixes                = ["10.0.1.0/24"]
    NIC_name                        = "Develectric-NIC1"
    ip_con_name                     = "internal"
    pip_allocation                  = "Dynamic"
    VM_Name                         = "Develectric-VM1"
    size                            = "Standard_F2"
    disable_password_authentication = false
    os_diskname                     = "ReadWrite"
    storacc_type                    = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"

  }

  VM2 = {
    rg_name                         = "Develectric-RG"
    location                        = "westus2"
    storageacc_name                 = "develectricstgaccount2"
    account_tirr                    = "Standard"
    account_replication_type        = "LRS"
    VNet_name                       = "Develectric-VNet"
    address_space                   = ["10.0.0.0/16"]
    Subnet_name                     = "Develectric-backendsubnet"
    address_prefixes                = ["10.0.2.0/24"]
    NIC_name                        = "Develectric-NIC2"
    ip_con_name                     = "internal"
    pip_allocation                  = "Dynamic"
    VM_Name                         = "Develectric-VM2"
    size                            = "Standard_F2"
    disable_password_authentication = false
    os_diskname                     = "ReadWrite"
    storacc_type                    = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"

  }
}


AZVMS2 = {
  Bastionhost = {
    bas_subnetname        = "AzureBastionSubnet"
    rg_name               = "Develectric-RG"
    VNet_name             = "Develectric-VNet"
    bas_address_prefixes  = ["10.0.3.0/24"]
    PIP_name              = "Bastion-PIP"
    location              = "westus2"
    bashost_name          = "Bastionhost1"
    allocation_method     = "Static"
    bas-sku               = "Standard"
    ip_configuration_name = "configuration"
  }
}
AZVMS3 = {
  bas-keybolt1 = {
    # name     = "baskeyvoltum"
    location = "westus2"
    rg_name  = "Develectric-RG"
    # userkey_name    = "uservm1"
    # secret_passname = "user-password"
  }
}

AZVMS4 = {
  LB = {
    LB_name                  = "Dev-LB"
    location              = "westus2"
    rg_name   = "Develectric-RG"
    front_ipconfiguration = "PublicIPAddress"
  }
}
