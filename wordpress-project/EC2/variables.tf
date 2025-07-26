locals {
    instance_ami = ami-044415bb13eee2391
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}