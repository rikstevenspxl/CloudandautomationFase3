resource "aws_network_acl" "acl-000aaf7d" {
    vpc_id     = "vpc-e884f692"
    subnet_ids = ["subnet-c2acb4cd", "subnet-f391b794", "subnet-17542129", "subnet-f3795baf", "subnet-f14468df", "subnet-9e9564d3"]

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
    }
}

resource "aws_network_acl" "acl-0f4c4eb5a7ce87ba9" {
    vpc_id     = "vpc-0701ad5250666b5eb"
    subnet_ids = ["subnet-0cec1316127d1cd71"]

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
    }
}

resource "aws_network_acl" "acl-0c4792a5e8626b6cc" {
    vpc_id     = "vpc-0f1c57c1a7405c58e"
    subnet_ids = ["subnet-0cfdbcc52dfdd29b5"]

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
    }
}

resource "aws_network_acl" "acl-02011246ba986d400" {
    vpc_id     = "vpc-0b569d93f7f19b02e"
    subnet_ids = ["subnet-06816ba8d46b915b5"]

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
    }
}
