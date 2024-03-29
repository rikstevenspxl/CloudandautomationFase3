resource "aws_egress_only_internet_gateway" "egressgateway" {
    vpc_id = "${aws_vpc.Fase3vpc.id}"
}
//routetable public
resource "aws_route_table" "routetable" {
  vpc_id = "${aws_vpc.Fase3vpc.id}"

  route {
    cidr_block = "172.32.1.0/24"
    gateway_id = "${aws_internet_gateway.Fase3Gateway.id}"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.Fase3Gateway.id}"
  }
  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = "${aws_egress_only_internet_gateway.egressgateway.id}"
  }

  tags = {
    Name = "routetable"
  }
}