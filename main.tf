provider "aws" {
  region = var.aws_region
}

module "s3-module" {
  source = "app.terraform.io/TFTMM/s3-module/aws"
  providers = {
    aws = "aws"
  }
  count = 5
}
