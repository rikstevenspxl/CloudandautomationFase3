resource "aws_route_table" "rtb-53778e2d" {
    vpc_id     = "vpc-e884f692"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-5f6acb24"
    }

    tags= {
    }
}
