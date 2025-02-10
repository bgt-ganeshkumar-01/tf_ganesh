output "instance_ids" {
  value = aws_instance.microservice_instance[*].id
}

output "public_ips" {
  value = aws_instance.microservice_instance[*].public_ip
}

output "private_ips" {
  value = aws_instance.microservice_instance[*].private_ip
}
