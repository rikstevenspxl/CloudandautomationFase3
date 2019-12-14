resource "aws_network_acl" "aclFase3" {
    vpc_id     = "${aws_vpc.Fase3vpc.id}"
    subnet_ids = ["${aws_subnet.Private_Subnet.id}","${aws_subnet.Public_Subnet.id}","${aws_subnet.RDSSubnet1.id}","${aws_subnet.RDSSubnet2.id}"]

    ingress {
        from_port  = 0
        to_port    = 0
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }

    egress {
        from_port  = 0
        to_port    = 0
        rule_no    = 100
        action     = "allow"
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }

    tags= {
        Name = "networkACL"
    }
}

