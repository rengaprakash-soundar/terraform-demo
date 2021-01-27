module "spoke1_rg1" {
    source = "./resourcegroup"
    spoke1_rg = "${var.rg}"
    spoke1_location= "${var.location}"
}
module "spoke1-vnet" {
    source = "./vnet"
    rg = "${module.spoke1_rg1.rg}"
    location ="${module.spoke1_rg1.location}"
    spoke1_cidr = "${var.spoke1_cidr1}"
}
module "spoke1-subnet" {
    source = "./subnet"
    rg = "${module.spoke1_rg1.rg}"
    location ="${module.spoke1_rg1.location}"
    spoke1_vnet ="${module.spoke1-vnet.spoke1_vnet}"
    spoke1_subnet = "${var.spoke1_subnet1}"


}
module "routetable" {
    source = "./routetable"
    rg = "${module.spoke1_rg1.rg}"
    location ="${module.spoke1_rg1.location}"
    subnet_id ="${module.spoke1-subnet.subnet_id}"

}
module "testvm4" {
    source = "./test-vm"
    rg = "${module.spoke1_rg1.rg}"
    location ="${module.spoke1_rg1.location}"
    subnetvm_id ="${module.spoke1-subnet.subnet_id}"
}
