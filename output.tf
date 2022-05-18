# define outputs for my EC2 instance's ID
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

# define outputs for my EC2 instance's IP address
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}
