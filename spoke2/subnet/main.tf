resource "azurerm_subnet" "spoke2-subnet" {
  name                 = "spoke1-subnet"
  resource_group_name  = "${var.rg}"
  virtual_network_name = "${var.spoke2_vnet}"
  address_prefix       = "${var.spoke2_subnet}"
}
