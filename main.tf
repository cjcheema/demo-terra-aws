provider "aws" {
  region = "ap-south-1"  # Provide your desire AWS region here
}

resource "aws_instance" "example" {
  ami           = "ami-03100b7790806a77e"  # Replace with a valid AMI ID
  instance_type = "t2.micro"  # Provide the desire AWS instance type

  tags = {
    Name = "cj-demo-linux" # Provide identical instance name here
  }
}
