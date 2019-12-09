resource "aws_subnet" "Public_Subnet" {
    vpc_id                  = "${aws_vpc.Fase3vpc.id}"
    cidr_block              = "172.31.1.0/24"
    tags = {
        Name = "Public_Subnet"
    }
}
resource "aws_subnet" "Private_Subnet" {
    vpc_id                  = "${aws_vpc.Fase3vpc.id}"
    cidr_block              = "172.31.2.0/24"
    tags = {
        Name = "Private_Subnet"
    }
}
resource "aws_subnet" "RDSSubnet1" {
    vpc_id                  = "${aws_vpc.Fase3vpc.id}"
    cidr_block              = "172.31.3.0/24"
    availability_zone       = "us-east-1a"
    tags = {
        Name = "RDSSubnet1"
    }
}
resource "aws_subnet" "RDSSubnet2" {
    vpc_id                  = "${aws_vpc.Fase3vpc.id}"
    cidr_block              = "172.31.4.0/24"
    availability_zone       = "us-east-1b"
    tags = {
        Name = "RDSSubnet2"
    }
}

