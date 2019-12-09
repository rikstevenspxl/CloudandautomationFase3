resource "aws_internet_gateway" "Fase3Gateway" {
  vpc_id = "${aws_vpc.Fase3vpc.id}"

  tags = {
    Name = "Fase3Gateway"
  }
}
