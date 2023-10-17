variable "vpc_cidr" {
    type = string
    default = "10.10.0.0/16"
}

variable "vpc_tags" {
    type = map
    default = {
        Name = "Module-VPC"
        Environment = "PROD"
        Terraform = "True"
    }
}

variable "igw_tags" {
    type = map
    default = {
        Name = "Module-IGW"
        Environment = "PROD"
        Terraform = "True"
    }
}

variable "public_subnet_name" {
  type = list
  default = ["subnet-1a", "subnet-1b"]
}

variable "public_subnet_cidr" {
  type = list
  default = ["10.10.1.0/24", "10.10.2.0/24"]
}

variable "private_subnet_name" {
  default = ["subnet-1c", "subnet-1d"]
}

variable "private_subnet_cidr" {
  default = ["10.10.3.0/24", "10.10.4.0/24"]
}
