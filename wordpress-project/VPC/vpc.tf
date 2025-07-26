resource "aws_vpc" "VPC" {
  cidr_block = var.vpc_cidr
  
  tags = {
    Name = "wordpress-VPC"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "public-igw"
  }
}