terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-ec2" {
  ami           = "ami-07355fe79b493752d"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2"
  }
}