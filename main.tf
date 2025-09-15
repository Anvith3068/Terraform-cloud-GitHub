terraform {
    required_version = "~> v1.13.1" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.11.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "anvithinfra" {
	ami = "ami-0c2b8ca1dad447f8a" 
	instance_type = "t2.micro"
}
