#Terraform config definition

provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_instance" "vps-server" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"

  tags = {
    name = "terraform-based"
  }
}

