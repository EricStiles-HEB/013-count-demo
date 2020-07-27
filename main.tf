terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "2.70.0"
    }
  }
}

provider "aws" {
  alias = "hashi"  
}

module "s3-module" {
  source = "app.terraform.io/TFTMM/s3-module/aws"
  providers = {
    aws = aws.hashi
  }
}
