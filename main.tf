# Root Module

module "vpc" {
  source = "./vpc"
  vpc_cidr = "10.0.0.0/16"
  ext_ip = "0.0.0.0/0"
  pb_cidr = "10.0.1.0/24"
}

module "instance" {
  source = "./WEB"
  sn     = module.vpc.pb_sn
  sg     = module.vpc.sg
}

module "s3" {
  source = "./S3"
  # No additional variables are needed unless you want to parameterize the bucket name.
}
