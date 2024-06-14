provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-instance" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90"
  subnet_id = "subnet-019ea91ed9b5252e7"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "backend-statefile-bucket" # creating s3 bucket to store the Statefile
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"  # creating dynamodb to store the Lockfile
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}