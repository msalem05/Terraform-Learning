output "wordpress_public_ip" {
  description = "Public IP address of the WordPress server."
  value = module.ec2.instance_public_ip
}