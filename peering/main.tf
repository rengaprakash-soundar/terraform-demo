resource "azurerm_virtual_network_peering" "example-1" {
  name                      = "peer1to2"
  resource_group_name       = "${var.rg}"
  virtual_network_name      = "${var.source1}"
  remote_virtual_network_id = "${var.spoke1}"
}

resource "azurerm_virtual_network_peering" "example-2" {
  name                      = "peer2to1"
  resource_group_name       = "${var.rg1}"
  virtual_network_name      = "${var.spoke1_name}"
  remote_virtual_network_id = "${var.vnet_id}"
}
resource "azurerm_virtual_network_peering" "example-3" {
  name                      = "peer2to3"
  resource_group_name       = "${var.rg}"
  virtual_network_name      = "${var.source1}"
  remote_virtual_network_id = "${var.spoke2}"
}

resource "azurerm_virtual_network_peering" "example-4" {
  name                      = "peer2to3"
  resource_group_name       = "${var.rg2}"
  virtual_network_name      = "${var.spoke2_name}"
  remote_virtual_network_id = "${var.vnet_id}"
}