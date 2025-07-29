resource aws_instance "wordpress-instance" {

    ami = data.aws_ami.amazon_linux.id 
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = [aws_security_group.wordpress.id]
    associate_public_ip_address = true

    tags = {
      Name = ec2-wordpress
    }
}

resource "aws_security_group" "" {
  name   = "sg"
  vpc_id = var.vpc_id
  description = "Allow HTTP and SSH"

  ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = var.allowed_cidr_blocks  
}

ingress {
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  }

data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"]
}


