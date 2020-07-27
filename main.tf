provider "aws" {
  alias = "hashi"  
}

module "s3-module" {
  source = "app.terraform.io/TFTMM/s3-module/aws"
  providers = {
    aws = aws.hashi
  }
  count = 5
}
