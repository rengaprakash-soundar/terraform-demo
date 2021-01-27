output "subnet" {
    value= "${azurerm_subnet.spoke1-subnet.address_prefix}"
}
output "subnet_id" {
    value= "${azurerm_subnet.spoke1-subnet.id}"
}