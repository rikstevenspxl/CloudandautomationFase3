provider "aws" {
    region                  = "${var.region}"
}

resource "aws_keypair" "ssh-Webserver"{
    key_name = "webserverkey"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyGY72y4diRZcbjvhBSazV1wB4FiQHREqBesOfl4o/4j+av/QLxv4fzFxKMa1iqLa6ytRd+nPbsqte3nS/ntcbl+vvoPtD7qg6Gt87d+d+LM4ce5PHy3YI/jEX3LvVJp0tvvO2OHJgHGTrYSVC4l5v1fNaiP/yAlCf1kBFLP6lC4rlgmJMj8P6tyOmkBBIs+U5g633ea4fWjg/Knd4nC6YOUZjg4ChqNg4i905pyYh5MmmXCvN6iV2MfkRpqKOEPgy3SlacSStGV8+GO0U3o5ultiv2dCjaj65E24oiZMMIBnwv7HgvKe+XsLLd+eIZBqG8q214Cxs0Cf0q61K4OCJ student@E5--PXL"
}

resource "aws_instance" "Webserver1" {
    ami                         = "${var.ami_webserver["id"]}"
    instance_type               = "${var.Webserver1["instance_type"]}"
    key_name                    = "${var.Webserver1["name"]}"
    vpc_security_group_ids      = ["${aws_security_group.SG-WebServer.id}"]
    associate_public_ip_address = false
    private_ip                  = "${var.Webserver1["private_ip"]}"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags= {
        Name = "Webserver1"
    }
}

resource "aws_instance" "Webserver2" {
    ami                         = "${var.ami_webserver["id"]}"
    instance_type               = "${var.Webserver2["instance_type"]}"
    key_name                    = "${var.Webserver2["name"]}"
    vpc_security_group_ids      = ["${aws_security_group.SG-WebServer.id}"]
    associate_public_ip_address = false
    private_ip                  = "${var.Webserver2["private_ip"]}"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = true
    }

    tags= {
        Name = "Webserver2"
    }
}
resource "aws_instance" "Webserver3" {
    ami                         = "${var.ami_webserver["id"]}"
    instance_type               = "${var.Webserver3["instance_type"]}"
    key_name                    = "${var.Webserver3["name"]}"
    vpc_security_group_ids      = ["${aws_security_group.SG-WebServer.id}"]
    associate_public_ip_address = false
    private_ip                  = "${var.Webserver3["private_ip"]}"
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



