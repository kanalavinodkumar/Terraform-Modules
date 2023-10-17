variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  description = "Provide 2 public subnet cidr"
  validation {
    condition = (
      length(var.public_subnet_cidr) == 2
      )
      error_message = "CIDR list must be 2"
  }
}

variable "public_subnet_name" {
  type = list
  validation {
    condition = (
      length(var.public_subnet_name) == 2
      )
      error_message = "Subnet name list must be 2"
  }
}


variable "private_subnet_cidr" {
  type = list
  description = "Provide 2 private subnet cidr"
  validation {
    condition = (
      length(var.private_subnet_cidr) == 2
      )
      error_message = "CIDR list must be 2"
  }
}

variable "private_subnet_name" {
  type = list
  validation {
    condition = (
      length(var.private_subnet_name) == 2
      )
      error_message = "Subnet name list must be 2"
  }
}

variable "public_route_table_tags" {
  type = map
  default = {}
}

variable "private_route_table_tags" {
  type = map
  default = {}
}