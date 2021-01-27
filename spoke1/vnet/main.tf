resource "azurerm_virtual_network" "spoke1-vnet" {
  name                =   "spoke1-vnet"
  location            = "${var.location}"
  resource_group_name = "${var.rg}"
  address_space       = "${var.spoke1_cidr}"
}