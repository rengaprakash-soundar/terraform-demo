 output "vnet_id1" {
    value ="${module.hub_rg.vnet_id}"
}
output "spoke1_id1" {
    value ="${module.spoke1.spoke1_id}"
}
output "spoke2_id1" {
    value ="${module.spoke2.spoke2_id}"
}
output "vnet1" {
    value ="${module.hub_rg.vnet}"
}
output "spoke1_vnet1"{
    value = "${module.spoke1.spoke1_vnet}"
}
output "spoke2_vnet1"{
    value = "${module.spoke2.spoke2_vnet}"
}