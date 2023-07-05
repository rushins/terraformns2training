terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "ansible_tower" {
  ami           = "ami-02d40d11bb3aaf3e5"
  instance_type = "t2.micro"
  key_name      = "rushiawstrail"

  tags = {
    Name = "ansibletower"
  }
}

