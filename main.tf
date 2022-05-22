#module "vpc" {
#  source = "git::https://github.com/ashwinreddy9966/tf-module-vpc.git?ref=main"
#}

module "vpc" {
  source           = "./vendor/modules/vpc" # we made this as the source as Terrafile places the remote source module and place here
  VPC_CIDR         = var.VPC_CIDR
  ENV              = var.ENV
  AZ               = var.AZ
  DEFAULT_VPC_ID   = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT   = var.DEFAULT_VPC_RT
  PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
}
