output "instance_public_ip" {
  description = "Endereço IP público da instância EC2."
  value       = aws_instance.main.public_ip
}
