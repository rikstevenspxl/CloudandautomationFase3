provider "aws" {
  access_key = "ASIAXU7J3SHRKI73P3XY"
  secret_key = "SZ6VWbVwuhlCWWVhdSGGg5xf4sU92CzRyTmlZhD0"
  region = "us-east-1"
}

resource "aws_instance" "WebServer1" {
  ami            = "ami-019a14af0631ce494"
  instance_type  = "t2.micro"
  key_name 	 = "AWS EC2 - NOV 2019"
  tags = {
	Name 	 = "WebServer1"
	Project  = "Demo1"
}
}
resource "aws_eip" "ip" {
  instance 	 = "${aws_instance.WebServer1.id}"
}
resource "aws_vpc" "example" {
      cidr_block = "10.0.0.0/16"
}
resource "aws_security_group" "SG-WebServer" {
   name  	 = "SG-WebServer"
   description   = "Allow Access to WebServers"
   vpc_id 	 = "${aws_vpc.example.id}"
ingress {
from_port	 = 22
to_port		 = 22
protocol 	 = "ssh"
cidr_blocks	 = ["192.168.0.0/24"]
}
}
