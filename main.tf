terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
}

terraform {
  cloud {
    organization = "second-cli"

    workspaces {
      name = "js-cli-woorkspaceee"
    }
  }
}

resource "aws_instance" "instance" {
    instance_type = var.instance_type
    ami = var.ami
    tags = {
        name = var.names
    }
  
}
