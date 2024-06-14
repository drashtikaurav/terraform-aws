terraform {
  backend "s3" {
    bucket         = "backend-statefile-bucket" # S3 bucket to store statefile
    key            = "xyz/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock" #dynamodb to create lock
  }
}