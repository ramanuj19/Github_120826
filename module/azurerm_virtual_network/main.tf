variable "vnet" {
  
}
resource "azurerm_virtual_network" "virtualnetwork" {
  for_each = var.vnet
  resource_group_name = each.value.rg_name
  location = each.value.rg_location
  name = each.value.vnet_name
  address_space = each.value.address_space
}