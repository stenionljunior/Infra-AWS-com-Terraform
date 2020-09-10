resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.dnsHostNames
  instance_tenancy     = var.instanceTenancy 
  enable_dns_support   = var.dnsSupport 
  
  tags = {
      Name = "VPC_Desafio"    
  }
}