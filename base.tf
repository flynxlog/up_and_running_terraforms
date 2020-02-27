# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

# create a single instance:
resource "aws_instance" "base" {
    ami  =  "ami-0d729a60"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform-ec2"
    }
  
}

