variable "location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "hub_cidr" {
    
  default = ["10.0.0.0/16"]
}
