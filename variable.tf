variable "spoke2_location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "spoke2_rg" {
  description = "Location of the network"
  default     = "spoke1resourcegroup"
}
variable "spoke1_location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "spoke1_rg" {
  description = "Location of the network"
  default     = "spoke1resourcegroup"
}
variable "hub_location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "hub_rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "hub_cidr" {
  description = "Location of the network"
  
}

variable "spoke1_cidr2" {
  description = "Location of the network"
  
}
variable "spoke2_cidr2" {
  description = "Location of the network"
  
}
variable "subnet1" {

}
variable "dmz1" {
  
}
variable "private_nva" {
  
}
variable "spoke1_subnet" {
  
}
variable "spoke2_subnet" {
  
}