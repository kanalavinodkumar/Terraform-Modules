variable "security_group_name" {
    type = string
}

variable "security_group_description" {
    type = string
    default = "This security group is for EC2" 
}

variable "vpc_id" {
    type = string
}


variable "ingress" {
  type = map
  default = {
    
    postgress = {
    description      = "Allow 443 port"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    http = {
    description      = "Allow 80 port"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    ssh = {
    description      = "Allow 22 port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }
}

variable "security_group_tags" {
    type = map
    default = {
        Name = "Project"
        Environment = "PROD"
        Terraform = "True"
    }
}