provider "aws" {
  region = "us-east1"
}

terraform {
  backend "s3" {}
}