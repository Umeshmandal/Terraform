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

subnets = {
  subnet1 = {
    name             = "fronted-subnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    name            = "backend-subnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}


