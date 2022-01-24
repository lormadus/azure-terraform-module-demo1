variable "vnet_name" {
  default = ""
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
}

variable "rgname" {
    type = string
    description = "Name of resource group"
}
variable "location" {
    type = string
    description = "Azure location of storage account environment"
}
