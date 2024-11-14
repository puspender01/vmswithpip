module "rg" {
  source = "../../module/rg"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../module/vnet"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.vnet]
  source     = "../../module/subnet"
  subnets    = var.subnets
}
module "nsg" {
  depends_on = [module.rg,module.vnet]
  source     = "../../module/netsecgp"
  nsg        = var.nsgs
}
module "pip" {
  depends_on = [module.rg,module.subnet]
  source     = "../../module/pubip"
  pip        = var.pips
}
module "nic" {
  depends_on = [ module.pip, module.nsg]
  source     = "../../module/nic"
  nics       = var.nics
}
module "nicnsgass" {
  depends_on = [module.nic, module.nsg]
  source     = "../../module/nicnsgasso"
  nicnsg     = var.nicnsg
}
module "vm" {
  depends_on = [module.nic]
  source     = "../../module/vm"
  vms        = var.vms
}
# module "bastion" {
#   depends_on = [module.subnet, module.pip, module.vm]
#   source     = "../../module/bastion"
#   bastion    = var.bastion
# }