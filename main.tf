module "s3-module" {
  source  = "app.terraform.io/TFTMM/s3-module/aws"
  version = "0.1.3"

  count = 5
}
