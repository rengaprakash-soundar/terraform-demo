
module "spoke2_rg1" {
    source = "./resourcegroup"
    spoke2_rg = "${var.rg}"
    spoke2_location= "${var.location}"
}
module "spoke2-vnet" {
    source = "./vnet"
    rg = "${module.spoke2_rg1.rg}"
    location ="${module.spoke2_rg1.location}"
    spoke2_cidr = "${var.spoke2_cidr1}"
}
module "spoke2-subnet" {
    source = "./subnet"
    rg = "${module.spoke2_rg1.rg}"
    location ="${module.spoke2_rg1.location}"
    spoke2_vnet ="${module.spoke2-vnet.spoke2_vnet}"
    spoke2_subnet = "${var.spoke2_subnet1}"


}
module "routetable" {
    source = "./routetable"
    rg = "${module.spoke2_rg1.rg}"
    location ="${module.spoke2_rg1.location}"
    subnet_id ="${module.spoke2-subnet.subnet_id}"

}
module "testvm4" {
    source = "./test-vm"
    rg = "${module.spoke2_rg1.rg}"
    location ="${module.spoke2_rg1.location}"
    subnetvm_id ="${module.spoke2-subnet.subnet_id}"
}
