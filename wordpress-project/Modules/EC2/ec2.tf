resource aws_instance "wordpress-instance" {
    ami = local.instance_ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id

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


