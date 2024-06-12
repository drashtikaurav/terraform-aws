resource "aws_instance" "hello-world" {
  ami           = var.ami-id
  instance_type = var.instance-type
  tags = {
    Name = "HelloWorld"
  }  
}