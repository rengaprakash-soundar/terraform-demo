provider "azurerm" {
  features {}
}
module "hub_rg" {
    source = "./hub"
    rg = "${var.hub_rg}"
    location = "${var.hub_location}"
    hub_cidr1 = "${var.hub_cidr}"
    subnet   = "${var.subnet1}"
    dmz      = "${var.dmz1}"
    private_ip1 ="${var.private_nva}"
    
}


module "spoke1" {
    source = "./spoke1"
    rg = "${var.spoke1_rg}"
    location = "${var.spoke1_location}"
    spoke1_cidr1 ="${var.spoke1_cidr2}"
    spoke1_subnet1 = "${var.spoke1_subnet}"
    
}

module "spoke2" {
    source = "./spoke2"
    rg = "${var.spoke2_rg}"
    location = "${var.spoke2_location}"
    spoke2_cidr1 ="${var.spoke2_cidr2}"
    spoke2_subnet1 = "${var.spoke2_subnet}"
    
}
module "peering" {
    source = "./peering"
    rg = "${var.hub_rg}"
    rg1 = "${var.spoke1_rg}"
    rg2 = "${var.spoke2_rg}"
    source1 ="${module.hub_rg.vnet}"
    vnet_id ="${module.hub_rg.vnet_id}"
    spoke1_name ="${module.spoke1.spoke1_vnet}"
    spoke2_name ="${module.spoke2.spoke2_vnet}"
    spoke1 ="${module.spoke1.spoke1_id}"
    spoke2 ="${module.spoke2.spoke2_id}"

    
}