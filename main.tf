module "s3-module" {
  source = "app.terraform.io/TFTMM/s3-module/aws"
  providers = {
    aws = hashicorp/aws
  }
  count = 5
}
