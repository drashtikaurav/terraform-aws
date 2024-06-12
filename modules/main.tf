provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./resource-modules/ec2-instance"
  # ami-id = local.ami-id
  # instance-type = local.instance-type
  ami-id = var.ami-id
  instance-type = var.instance-type
}

module "s3" {
  source = "./resource-modules/s3-bucket"
  bucket-name = local.bucket-name
}