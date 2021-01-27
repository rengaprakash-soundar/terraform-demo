output "spoke1_vnet" {
    value = "${azurerm_virtual_network.spoke1-vnet.name}"
}
output "spoke1_id" {
    value = "${azurerm_virtual_network.spoke1-vnet.id}"
}
output "spoke1_cidr" {
    value = "${azurerm_virtual_network.spoke1-vnet.address_space}"
}