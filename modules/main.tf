provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "modules/ec2-instance"
}

module "s3" {
  source = "modules/s3-bucket"
}