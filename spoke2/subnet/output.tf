output "subnet" {
    value= "${azurerm_subnet.spoke2-subnet.address_prefix}"
}
output "subnet_id" {
    value= "${azurerm_subnet.spoke2-subnet.id}"
}