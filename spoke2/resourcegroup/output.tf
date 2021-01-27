output "rg"{
    value = "${azurerm_resource_group.spoke2.name}"
}
output "location"{
    value = "${azurerm_resource_group.spoke2.location}"
}