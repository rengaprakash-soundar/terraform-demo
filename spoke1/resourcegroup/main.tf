resource "azurerm_resource_group" "spoke1" {
  name     = "${var.spoke1_rg}"
  location = "${var.spoke1_location}"
}
