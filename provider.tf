terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "5.57.0"
      version = "~> 5.0"  # Use the latest version of the AWS provider
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # Provide your desire AWS region here
}