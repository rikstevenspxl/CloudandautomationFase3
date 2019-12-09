resource "aws_security_group" "SG-LoadBalancer" {
    name        = "SG-LoadBalancer"
    description = "SecurityGroupLoadBalancer"
    vpc_id      = "${aws_vpc.Fase3vpc.id}"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 9090
        to_port         = 9090
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags= {
        Name = "SGLoadBalancer"
    }
}

resource "aws_security_group" "RDSSecurityGroup" {
    name        = "RDSSecurityGroup"
    description = "SecurityGroup for MySQL"
    vpc_id      = "${aws_vpc.Fase3vpc.id}"

    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = ["${aws_security_group.SG-WebServer.id}"]
        self            = false
    }
    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags= {
        Name = "RDSSecurityGroup"
    }
}
resource "aws_security_group" "SG-WebServer" {
    name        = "SG-WebServer"
    description = "SecurityGroup for Webservers"
    vpc_id      = "${aws_vpc.Fase3vpc.id}"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        security_groups = ["${aws_security_group.SG-LoadBalancer.id}"]
        self            = false
    }

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 9090
        to_port         = 9090
        protocol        = "tcp"
	security_groups	= ["${aws_security_group.SG-LoadBalancer.id}"]
        self            = false
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags= {
        Name = "SGWebServer"
    }
}

