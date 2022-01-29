terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {

  instance_type = "t2.micro"
  ami           = "ami-01893222c83843146"
  tags = {
    name = "app-server"
  }


}
