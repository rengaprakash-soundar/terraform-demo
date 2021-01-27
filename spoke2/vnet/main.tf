resource "azurerm_virtual_network" "spoke2-vnet" {
  name                =   "spoke2-vnet"
  location            = "${var.location}"
  resource_group_name = "${var.rg}"
  address_space       = "${var.spoke2_cidr}"
}