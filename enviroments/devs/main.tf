module "rg-module" {
  source = "../../module/AZ-Resource_group"
  AZVMS  = var.AZVMS1
}
# module "stg-module" {
#   source     = "../../module/AZ-Storage_account"
#   AZVMS      = var.AZVMS1
#  depends_on = [module.rg-module]
# }
module "VNet-module" {
  source     = "../../module/Az-Virtual_network"
  AZVMS      = var.AZVMS1
  depends_on = [module.rg-module] 
}
module "Subnet-module" {
  source     = "../../module/AZ-Subnet_network"
  AZVMS      = var.AZVMS1
  depends_on = [module.VNet-module]
}
module "Nic-module" {
  source     = "../../module/AZ-Network_interface"
  AZVMS      = var.AZVMS1
  depends_on = [module.Subnet-module]
}
module "vm-module" {
  source     = "../../module/Az-Virtual_machine"
  AZVMS      = var.AZVMS1
  depends_on = [module.Key-volt]
}
module "bastion" {
  source     = "../../module/AZ-Bastion"
  AZVMS      = var.AZVMS2
  depends_on = [module.vm-module]
}
module "Key-volt" {
  source = "../../module/AZ-Keyvolt"
  AZVMS = var.AZVMS3
  depends_on = [module.Nic-module] 
}
module "Dev-LB" {
    source = "../../module/AZ-Loadbalancer"
    AZVMS = var.AZVMS4
    depends_on = [ module.bastion ]
  
}