resource "aws_instance" "cj-vm" {
  ami           = "ami-01376101673c89611"  # Replace with a valid AMI ID
  instance_type = "t2.micro"  # Provide the desire AWS instance type
  key_name = "cjkeypair" # Provide the name of your key pair here

  tags = {
    Name = "cj-demo-linux" # Provide identical instance name here
  }
}
