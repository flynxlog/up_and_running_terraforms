provider "aws" {
  
}

resource "aws_instance" "example" {
  ami           =  "ami-0c55b159cbfaffe1f0" 
  instance_type =  "t2.micro"

  tags = {
    Name = "terraform-example"
  }

  
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port = 8080
    to_port   = 8080
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  
}
