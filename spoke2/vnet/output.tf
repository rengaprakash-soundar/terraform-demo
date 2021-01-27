output "spoke2_vnet" {
    value = "${azurerm_virtual_network.spoke2-vnet.name}"
}
output "spoke2_id" {
    value = "${azurerm_virtual_network.spoke2-vnet.id}"
}
output "spoke2_cidr" {
    value = "${azurerm_virtual_network.spoke2-vnet.address_space}"
}