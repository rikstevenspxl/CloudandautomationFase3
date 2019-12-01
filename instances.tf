provider "aws" {
    region                  = "us-east-1"
}

resource "aws_instance" "WebServer2" {
    ami                         = "ami-019a14af0631ce494"
    availability_zone           = "us-east-1a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "WebServer2"
    subnet_id                   = "subnet-f14468df"
    vpc_security_group_ids      = ["sg-0e0027347707705be"]
    associate_public_ip_address = false
    private_ip                  = "172.31.88.255"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags= {
        Name = "WebServer2"
    }
}

resource "aws_instance" "WebServer" {
    ami                         = "ami-019a14af0631ce494"
    availability_zone           = "us-east-1a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "WebServer"
    subnet_id                   = "subnet-f14468df"
    vpc_security_group_ids      = ["sg-0e0027347707705be"]
    associate_public_ip_address = false
    private_ip                  = "172.31.89.237"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags= {
        Name = "WebServer"
    }
}

resource "aws_instance" "Webserver3" {
    ami                         = "ami-019a14af0631ce494"
    availability_zone           = "us-east-1a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "WebServer3"
    subnet_id                   = "subnet-f14468df"
    vpc_security_group_ids      = ["sg-0e0027347707705be"]
    associate_public_ip_address = false
    private_ip                  = "172.31.93.211"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags= {
        Name = "Webserver3"
    }
}

