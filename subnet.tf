resource "aws_subnet" "subnet-f391b794-subnet-f391b794" {
    vpc_id                  = "${aws_vpc.default.id}"
    cidr_block              = "172.31.1.0/16"
    availability_zone       = "us-east-1d"
    map_public_ip_on_launch = true

    tags= {
    }
}

