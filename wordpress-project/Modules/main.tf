module "ec2" {
    source = "./Modules/EC2"
    instance_type = var.instance_type
    vpc_id = module.vpc.vpc_id
    subnet_id = module.vpc.public_subnet_id

}

module "vpc" {
    source = "./Modules/VPC"
    

}