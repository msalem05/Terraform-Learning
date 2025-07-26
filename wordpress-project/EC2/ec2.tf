resource aws_instance "wordpress-instance" {
    ami = local.instance_ami
    instance_type = var.instance_type

    tags = {
      Name = ec2-wordpress
    }
}
