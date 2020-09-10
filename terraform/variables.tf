variable "region" {
     default = "us-east-1"
}

variable "availabilityZone" {
     default = "us-east-1a"
}

variable "availabilityZoneSec" {
     default = "us-east-1b"
}

variable "vpc_cidr_block" {
    description = "Range of IPv4 address for the VPC"
    default     = "172.16.0.0/16"
}

variable "dnsSupport" {
    default = true
}

variable "dnsHostNames" {
    default = true
}

variable "instanceTenancy" {
    default = "default"
}

variable "publicdestCIDRblock" {
    default = "0.0.0.0/0"
}

variable "subnet" {
    description = "Range of IPv4 address for the VPC"
    default     = "172.16.10.0/24"
}

variable "subnetPrivada" {
    description = "Range of IPv4 address for the VPC"
    default     = "172.16.10.0/24"
}

variable "subnetPublica" {
    description = "Range of IPv4 address for the VPC"
    default     = "172.16.12.0/24"
}

variable "subnetSec" {
    description = "Range of IPv4 address for the VPC"
    default     = "172.16.20.0/24"
}

variable "regiao" {
    description = "Região padrão"
    default     = "us-east-1"
}

variable "tipoinstancia" {
    description = "Instancia padrão"
    default     = "t2.micro"
}

variable "amiec2instancia" {
    description = "ID da instancia padrão"
    #default     = "ami-062f7200baf2fa504"
    default     = "ami-06b263d6ceff0b3dd"
}

variable "namekeyec2" {
    description = "NOme da Key utilizada na ec2"
    default     = "desafio"
}

variable "name" {
    default     = "desafio"
}

variable "environment" {
    default     = "desafio"
}

variable "mapPublicIP" {
    default = true
}
