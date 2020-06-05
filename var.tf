variable "region" {

}

variable "vpc_cidr" {
  default = "10.0.0.0/8"
}

variable "instance_type" {
  default  = "t2.micro"
}

variable "ami" {
  default = "ami-0e34e7b9ca0ace12d"

}

variable "public_subnet_cidr" {
  type = list

}

variable "private_subnet_cidr" {
  type = list
}

variable "availability_zone" {
  type = list
}

variable "public_subnet_names" {
  type = list

}

variable "private_subnet_names" {
  type = list

}
