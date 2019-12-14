provider "aws" {
    region                  = "${var.region}"
}

resource "aws_key_pair" "ssh-Webserver"{
    key_name = "webserverkey"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJb0BE3MDE89UbHpi1ZLA8UexX7w0LPf+GTh6+FZGtWCEUNtRCKD3tK9X/4vckhv+QN2gJH+f+Tn2ji0cn/9wmdzQxYgKpmWSJOwTQyFPyRAv/pjWmnF8T7iJ1GKzEk6B0FzXPx/bCFBwDKILKTH+K52uCVJXk/J2f3rtGiBIH7E+eT+GvckW2/6VvwsrGtDKBqZm9ZmPfPDuU2sQxjWSpz8cJyjSITz7sA2kh753His//WeDjcLuxtRpLLZKwtwNhr7Ls6Xo0ujN5TQaaLUbC7QKW0SANQ3wS669c/7HZIbk8OELrFwAqK2gWVzgDGc9i6yHv9ziK4AlZOmIm3lVH vagrant@CloudAutomation"
}
resource "aws_key_pair" "ssh-Webserver2"{
    key_name = "webserverkey2"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKhABYGrtiZNDvs57SIPHC6MFPQhKbizff4JRXVQV5L9P8B//TjjCf+DPwYbbMbuegQzNdyQ5qeu6jlvIczVjGkRCurGauCkQzLfPG5VR5I+e6xSgmTpwlDTvx3+vwYoB3bySzUu5ZCwdUVTaDIaNYh//dmD+nnpt9M2MCcrazIqFZ7dW7EqDghogTxYgvX7OqQCkz3N69dU7/kP61H0as4JprgKLz2I+KoCw4pLySwPmGrB5ZdS3x2FF/poXTL5kUUjMs/To0DOMDBGG1ylqG8cbo4R4HDEYYM3g/3w4phJGenIpPkAhQDUVtqEP4slyxTVtDOBhfQ16W+ynKDHVj vagrant@CloudAutomation"
}
resource "aws_key_pair" "ssh-Webserver3"{
    key_name = "webserverkey3"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDyEG+84zo/xM/g6xgnNbzgecs1QYawFNFFT3G2NW3dfv7HQf1kvO624nlHlx+ruX0484/uUWU9M2n7wnYPFiSVyVdQRUlCIsmjtHs0/Q01mMoD3X5tr51VTdvAxaB/VBzz9h7K6Jyg+KQX26a5rnGBK4XUizmpKJKIAaicoG0nDiGCphoipiUHVcR6DU3HfwL8ows8B2xvDb/wTtm7UwwBrdLvsUBO/GtIhpayhntQskCRGVQhvtrg2Fa9neiV3hIAG7SavJ82W7rh7PC2UTDdaTHIzW2n+471aaFf3jYPl3f7M2Tj3dOwGjblDWHl6OXHNsdZwqxpiT3T7+ysbywT vagrant@CloudAutomation"
}



resource "aws_instance" "Webserver1" {
    ami                         = "${var.ami_webserver["id"]}"
    instance_type               = "${var.Webserver1["instance_type"]}"
    key_name                    = "webserverkey"
    vpc_security_group_ids      = ["${aws_security_group.SG-WebServer.id}"]
    associate_public_ip_address = false
    private_ip                  = "${var.Webserver1["private_ip"]}"
    subnet_id			= "${aws_subnet.Private_Subnet.id}"
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
    key_name                    = "webserverkey2"
    vpc_security_group_ids      = ["${aws_security_group.SG-WebServer.id}"]
    associate_public_ip_address = false
    subnet_id			= "${aws_subnet.Private_Subnet.id}"
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
    key_name                    = "webserverkey3"
    vpc_security_group_ids      = ["${aws_security_group.SG-WebServer.id}"]
    associate_public_ip_address = false
    subnet_id			= "${aws_subnet.Private_Subnet.id}"
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



