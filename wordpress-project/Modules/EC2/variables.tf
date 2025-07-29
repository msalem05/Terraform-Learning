variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "allowed_cidr_blocks" {
  description = "Allowed CIDR blocks for HTTP and SSH acesss"
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "vpc_id" {
  description = "VPC ID for the EC2 Instance"
  type = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 Instance"
  type = string
}