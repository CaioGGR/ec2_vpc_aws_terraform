variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "my_ip" {
  description = "Meu ip"
  type        = string
}

variable "ec2_key_name" {
  description = "Nome da chave SSH para a instância EC2"
  type        = string
}
