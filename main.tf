provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "lab10" {
  ami           = "ami-0a0e5d9c7acc336f1"
  instance_type = "t2.micro"
  count         = var.core_count

  tags = {
    Name = "lab10"
  }
}