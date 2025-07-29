output "instance_id" {
    value = aws_instance.wordpress-instance.id
}

output "instance_public_ip" {
    value = aws_instance.wordpress-instance.public_ip
}