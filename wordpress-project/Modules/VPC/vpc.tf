resource "aws_vpc" "VPC" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  
  tags = {
    Name = "wordpress-VPC"
  }
}

resource "aws_subnet" "pb-subnet" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.VPC.id

  tags = {
    Name = "public-igw"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.VPC.id

  route {
    cidr_block = var.route_destination_cidr
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}
