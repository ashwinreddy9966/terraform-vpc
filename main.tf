#module "vpc" {
#  source = "git::https://github.com/ashwinreddy9966/tf-module-vpc.git?ref=main"
#}

module "vpc" {
  source = "./vendor/modules/vpc" # we made this as the source as Terrafile places the remote source module and place here
  VPC_CIDR = var.VPC_CIDR
  ENV      = var.ENV
}
