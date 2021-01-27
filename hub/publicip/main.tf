resource "azurerm_public_ip" "example" {
  name                = "hubPublicIp1"
  resource_group_name = "${var.rg}"
  location            = "${var.location}"
  allocation_method   = "Dynamic"

}