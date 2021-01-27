output "rg"{
    value = "${module.spoke1_rg1.rg}"
}
output "location"{
    value = "${module.spoke1_rg1.location}"
}
output "spoke1_vnet"{
    value = "${module.spoke1-vnet.spoke1_vnet}"
}
output "subnet_id" {
    value= "${module.spoke1-subnet.subnet_id}"
}
output "spoke1_id" {
    value ="${module.spoke1-vnet.spoke1_id}"
}