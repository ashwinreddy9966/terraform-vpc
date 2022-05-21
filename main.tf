#module "vpc" {
#  source = "git::https://github.com/ashwinreddy9966/tf-module-vpc.git?ref=main"
#}

module "vpc" {
  source = "./vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
}
