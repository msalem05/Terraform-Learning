resource "aws_vpc" "VPC" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name = "wordpress-VPC"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
