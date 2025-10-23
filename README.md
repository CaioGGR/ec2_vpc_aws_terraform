Olá 👋

Esse é um projeto desenvolvido para a resolução do desafio prático de Terraform, parte do bootcamp de DevOps da Rocketseat.
## Arquitetura

A infraestrutura provisionada na AWS consiste em:

- Uma **VPC** (`Virtual Private Cloud`)
- Uma Subnet pública
- Internet Gateway e Route Table para acesso à internet
- Um Security Group
- Uma instância **EC2** (máquina virtual)

Todo o projeto foi desenvolvido utilizando Terraform como ferramenta de Infraestrutura como Código (IaC).

## Estrutura do Projeto

O código é organizado em **módulos** para evitar repetição e facilitar a manutenção. A estrutura principal é:

- `modules/aws_infra`: Contém o código base reutilizável para criar a infraestrutura.
- `environments/`: Contém as pastas para cada ambiente (`dev`, `staging`, `prod`).
    - Cada ambiente chama o módulo `aws_infra` e define suas próprias configurações (como tipo da instância, CIDRs, etc.) através do arquivo `terraform.tfvars`

## Pré-requisitos

Antes de começar, garanta que você tenha instalado:

- [Terraform](https://www.terraform.io/downloads.html) (versão 1.0 ou superior)
- [AWS CLI](https://aws.amazon.com/cli/)

## Como Executar

1. **Configure suas credenciais AWS:** Este projeto utiliza um profile da AWS para autenticação, definido pela variável `profile` no arquivo `terraform.tfvars`. Certifique-se de que seu AWS CLI esteja configurado com o profile correspondente. Ex:

 ```sh
aws configure --profile seu-nome-de-profile
   ```

2. **Navegue até um ambiente:**

  ```sh
cd environments/dev
   ```

3. **Inicialize o Terraform:** Este comando prepara o ambiente e baixa os módulos necessários.

  ```sh
terraform init
   ```

4. **Planeje as alterações:** Este comando mostra o que o Terraform fará antes de aplicar.

  ```sh
terraform plan
   ```

5. **Aplique a infraestrutura:** Este comando cria os recursos na AWS.

  ```sh
terraform apply
   ```

## Como Destruir a Infraestrutura

Para remover todos os recursos criados pelo Terraform em um ambiente, execute:

 ```sh
terraform destroy
   ```

