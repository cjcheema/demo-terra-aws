# This Terraform configuration creates an EC2 instance with SSM (AWS Systems Manager) access.
# It uses an IAM role to allow the instance to communicate with SSM.
resource "aws_iam_role" "ssm_role" {
  name = "EC2_SSM_Role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Effect = "Allow"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_policy" {
  role       = aws_iam_role.ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_instance" "cj-vm" {
  ami           = "ami-0e35ddab05955cf57"  # Replace with a valid AMI ID
  instance_type = "t3.nano"  # Provide the desire AWS instance type
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name # Attach the IAM role to the instance
  key_name = "cjkeypair" # Provide the name of your key pair here

  tags = {
    Name = "cj-demo-linux" # Provide identical instance name here
  }
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "EC2SSMProfile"
  role = aws_iam_role.ssm_role.name
}