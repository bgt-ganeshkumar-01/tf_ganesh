provider "aws"{
  region  = "us-east-1"
}

resource "aws_instance" "nov-terraform" {
  ami           = "ami-09f9c99c2b11f854e"
  instance_type = "t2.micro"
  key_name = "nova_admin"

  tags = {
    Name        = "nova_terraform_demo"
    Environment = "Dev"  # Added new tag
  }
}

resource "aws_iam_user" "example" {
  name = "nov_terraform"
}