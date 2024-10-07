dynamic-rg = {
  rg1 = {
    name     = "dynamic-resources"
    location = "West Europe"
  }
}


VNet = {
  VNnet = {
    name                = "dynamic-VNet"
    location            = "West Europe"
    resource_group_name = "dynamic-resources"
    address_space       = ["10.0.0.0/16"]

  }
  VNnet1 = {
    name                = "dynamic-VNet1"
    location            = "West Europe"
    resource_group_name = "dynamic-resources"
    address_space       = ["10.0.0.0/16"]

  }
}





