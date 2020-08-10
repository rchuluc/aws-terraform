provider "aws" {
  version = "~> 3.0"
  region  = "us-east-2"
}

resource "aws_instance" "dev1" {
  ami                    = var.ami_ubuntu
  instance_type          = var.ec2_machine
  key_name               = "terraform-aws"
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
  tags = {
    Name = "dev-1"
  }
}

