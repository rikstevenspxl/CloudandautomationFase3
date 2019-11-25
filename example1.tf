provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "WebServer1" {
  ami            = "ami-019a14af0631ce494"
  instance_type  = "t2.micro"
  tags = {
	Name 	 = "WebServer1"
	Project  = "Demo1"
}
	}
resource "aws_vpc" "example" {
      cidr_block = "10.0.0.0/16"
}
resource "aws_security_group" "SG-WebServers" {
   name  	 = "SG-WebServers"
   description   = "Allow Access to WebServers"
ingress {
from_port	 = 22
to_port		 = 22
protocol 	 = "ssh"
cidr_blocks	 = ["0.0.0.0/0"]
}
}
