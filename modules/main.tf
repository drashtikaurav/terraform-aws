provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./resource-modules/ec2-instance"
}

module "s3" {
  source = "./resource-modules/s3-bucket"
}