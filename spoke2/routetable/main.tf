resource "azurerm_route_table" "spoke2-subnet-rt" {
  name                          = "spoke2-subnet-rt"
  location                      = "${var.location}"
  resource_group_name           = "${var.rg}"
  disable_bgp_route_propagation = false
  route {
    name           = "default"
    address_prefix = "0.0.0.0/0"
    next_hop_type  = "VirtualAppliance"
    next_hop_in_ip_address ="192.168.3.84"
  }
  
}
resource "azurerm_subnet_route_table_association" "spoke2-gateway-rt-hub-vnet-subnet" {
  subnet_id      = "${var.subnet_id}"
  route_table_id = "${azurerm_route_table.spoke2-subnet-rt.id}"
}