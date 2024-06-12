resource "aws_s3_bucket" "hello-world" {
  bucket = var.bucket-name

  tags = {
    Name        = var.bucket-name
    Environment = "Dev"
  }
}