resource "azurerm_subnet" "spoke1-subnet" {
  name                 = "spoke1-subnet"
  resource_group_name  = "${var.rg}"
  virtual_network_name = "${var.spoke1_vnet}"
  address_prefix       = "${var.spoke1_subnet}"
}
