variable "vpc_cidr" {
   description = "CIDR Block for the VPC."
   type = string
}

variable "subnet_cidr" {
    description = "CIDR Block for the subnet "
    type = string
}

variable "route_destination_cidr" {
  description = "CIDR block for the route destination"
  type        = string
  default     = "0.0.0.0/0"
}

variable "availability_zone" {
    type = string
    default = "eu-west-2"
}