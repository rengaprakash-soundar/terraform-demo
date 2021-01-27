variable "location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "spoke2_cidr" {
    
  default = ["50.0.0.0/16"]
}