# Criação de Infra na AWS utilizando o Terraform

Infra AWS utilizando o Terraform

## Installation

Necessário ter o terraform instalado. 

```bash
https://www.terraform.io/downloads.html

```

Necessário ter uma conta na AWS com acesso programático para criação dos recursos.

## Usage

Clonar o projeto:

```python
- Clocar projeto: 

git clone https://github.com/stenionljunior/Infra-AWS-com-Terraform.git

- Acessar diretório do projeto:

cd Infra-AWS-com-Terraform/terraform

- Configurar credencias de acesso via variável de ambiente para o terraform ter acesso na AWS:

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

- Necessário copiar o arquivo .pem de acesso as EC2 do seu ambiente para:

Infra-AWS-com-Terraform/terraform


- Editar o arquivo main.tf e adicionar a configuração do S3 referente ao seu ambiente para que o terraform salve o state 

Alterar: 
    bucket = "state"
    key    = "state.tfstate"
    region = "A região do S3 bucket"

- Executar o comando abaixo para carregar o terraform:

terraform init

- Executar o comando abaixo para criar o plano com as alterações no ambiente:

terraform plan --out plano

- Executar o comando abaixo para aplicar as mudanças e criar o ambiente na AWS:

terraform apply -auto-approve

- Verificar o Output e copiar o endereço do load balancear e testar o acesso via browser:

lb_dns_name = "Endereço do lb"

- No browser será exibido a pagina do nginx que está sendo executado no Docker.

- O nginx está rodando em duas ec2 e o locad balancer do tipo Application está recebendo as requisições e direcionando para as instancias. 

- Para finalizar o ambiente e excluir todos os recursos criados na AWS, executar:

terraform destroy

```

