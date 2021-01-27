resource "azurerm_resource_group" "spoke2" {
  name     = "${var.spoke2_rg}"
  location = "${var.spoke2_location}"
}
