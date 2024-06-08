terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  alias = "us-east-1-region" #added multiple region in AWS
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-2-region" #added multiple region in AWS
  region = "us-west-2"
}


# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  provider = "aws.us-east-1-region" #tells aws to create a vpc in aws.<alias-name>, here us-east-1-region in provider block
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.1/16"
  provider = "aws.us-west-2-region" #tells aws to create a vpc in aws.<alias-name>, here us-west-2-region in provider block
}