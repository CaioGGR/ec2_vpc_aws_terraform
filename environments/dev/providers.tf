# environments/dev/providers.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1" # 🔹 Mesma versão em todos os ambientes
    }
  }
}

provider "aws" {
  region  = "us-east-2" # 🔹 Pode ser igual ou diferente por ambiente
  profile = var.profile   # 🔹 Seu profile AWS
}