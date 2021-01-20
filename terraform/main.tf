terraform {
  required_version = ">= 0.13"
  backend "s3" {
    bucket  = "terraform-udacity"
    key     = "terraform.tfstate"
    encrypt = true
    region  = "eu-central-1"
  }
}

provider "aws" {
  alias = "ire"
  region = "eu-west-1"
}

provider "aws" {
  alias = "fra"
  region = "eu-central-1"
}

module "primary" {
  source             = "./module/primary"
  providers = {
    aws = aws.fra
  }
}

module "secondary" {
  source             = "./module/secondary"
  providers = {
    aws = aws.ire
  }
}