output "rg"{
    value = "${module.spoke2_rg1.rg}"
}
output "location"{
    value = "${module.spoke2_rg1.location}"
}
output "spoke2_vnet" {
    value = "${module.spoke2-vnet.spoke2_vnet}"
}
output "subnet_id" {
    value= "${module.spoke2-subnet.subnet_id}"
}
output "spoke2_id" {
    value ="${module.spoke2-vnet.spoke2_id}"
}