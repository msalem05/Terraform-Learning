variable "vpc_cidr" {
   description = "CIDR Block for the VPC."
   type = string
}

variable "subnet_cidr" {
    description = "CIDR Block for the subnet "
    type = string
}

variable "availability_zone" {
    type = string
    default = "eu-west-2"
}