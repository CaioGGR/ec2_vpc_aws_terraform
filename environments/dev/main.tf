module "aws_infra" {
  source = "../../modules/aws_infra"
  vpc_cidr      = var.vpc_cidr
  subnet_cidr   = var.subnet_cidr
  environment   = var.environment
  instance_type = var.instance_type
  my_ip         = var.my_ip
  ec2_key_name  = var.ec2_key_name # Especificando a chave para este ambiente
}

output "instance_public_ip" {
  description = "IP público da instância EC2 do ambiente dev."
  value       = module.aws_infra.instance_public_ip
}