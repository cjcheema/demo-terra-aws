terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # Provide your desire AWS region here
  access_key  = var.aws_access_key_id
  secret_key  = var.aws_secret_access_key
}

resource "aws_instance" "example" {
  ami           = "ami-01376101673c89611"  # Replace with a valid AMI ID
  instance_type = "t2.micro"  # Provide the desire AWS instance type

  tags = {
    Name = "cj-demo-linux" # Provide identical instance name here
  }
}
