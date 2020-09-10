resource "aws_subnet" "subnet_privada" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnetPrivada
  availability_zone = var.availabilityZone

  tags = {
    Name = "Subnet_Desafio_Privada"
  }
}

resource "aws_subnet" "subnet_publica" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnetPublica
  availability_zone       = var.availabilityZone
  map_public_ip_on_launch = var.mapPublicIP

  tags = {
    Name = "Subnet_Desafio_Publica"
  }
}

resource "aws_subnet" "secondary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnetSec
  availability_zone = var.availabilityZoneSec

  tags = {
    Name = "Subnet_Desafio_Sec"
  }
}