module "resorce_group" {
  source = "../../module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  source     = "../../module/azurerm_virtual_network"
  vnet       = var.vnet
  depends_on = [module.resorce_group]
}

module "subnet" {
  source  = "../../module/azurerm_subnet"
  subnets = var.subnets
  depends_on = [module.vnet]
}
