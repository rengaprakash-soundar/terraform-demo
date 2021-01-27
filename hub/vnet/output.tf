output "hub_vnet" {
    value = "${azurerm_virtual_network.hub-vnet.name}"
}
output "id" {
    value = "${azurerm_virtual_network.hub-vnet.id}"
}
output "hub_cidr" {
    value = "${azurerm_virtual_network.hub-vnet.address_space}"
}
output "vnet" {
    value = "${azurerm_virtual_network.hub-vnet.name}"
}