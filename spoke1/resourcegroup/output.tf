output "rg"{
    value = "${azurerm_resource_group.spoke1.name}"
}
output "location"{
    value = "${azurerm_resource_group.spoke1.location}"
}