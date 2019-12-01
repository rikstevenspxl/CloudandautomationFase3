resource "aws_security_group" "vpc-e884f692-SG-LoadBalancer" {
    name        = "SG-LoadBalancer"
    description = "SecurityGroupLoadBalancer"
    vpc_id      = "vpc-e884f692"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["193.190.154.175/32"]
    }

    ingress {
        from_port       = 9090
        to_port         = 9090
        protocol        = "tcp"
        cidr_blocks     = ["193.190.154.175/32"]
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

resource "aws_security_group" "vpc-e884f692-SG-MySQLServer" {
    name        = "SG-MySQLServer"
    description = "SecurityGroup for MySQL"
    vpc_id      = "vpc-e884f692"

    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = ["sg-0e0027347707705be"]
        self            = false
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags= {
        Name = "SGMySQL"
    }
}
resource "aws_security_group" "vpc-e884f692-SG-WebServer" {
    name        = "SG-WebServer"
    description = "SecurityGroup for Webservers"
    vpc_id      = "vpc-e884f692"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        security_groups = ["sg-002aa499b0eac4f39"]
        self            = false
    }

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["193.190.154.175/32"]
    }

    ingress {
        from_port       = 9090
        to_port         = 9090
        protocol        = "tcp"
        security_groups = ["sg-002aa499b0eac4f39"]
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

resource "aws_security_group" "vpc-e884f692-default" {
    name        = "default"
    description = "default VPC security group"
    vpc_id      = "vpc-e884f692"

    ingress {
        from_port       = 3047
        to_port         = 3047
        protocol        = "tcp"
        security_groups = ["sg-0e0027347707705be"]
        self            = false
    }

    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        security_groups = ["sg-0e0027347707705be"]
        self            = false
    }

    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = ["sg-0e0027347707705be"]
        self            = false
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

}
