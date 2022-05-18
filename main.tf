terraform {
  required_providers {
    aws = {
      #provider's source
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  #the version must greater than 0.14.9
  required_version = ">= 0.14.9"
}

#the provider is AWS in this case, Terraform uses the provider to create and manage the resources
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

# resource type is aws_instance and resource name is app_server
resource "aws_instance" "app_server" {
  # I changed the ami id when I want to change the aws_instance.app_server resource under the provider block 
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
