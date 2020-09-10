provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

terraform {
  backend "s3" {
    bucket = "state-desafio"
    key    = "state-desafio.tfstate"
    region = "us-east-1"
  }
}