variable "location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "spoke1_cidr" {
    
  default = ["30.0.0.0/16"]
}