region = "${var.region}"

vpc = {
    name = "Fase3vpc"
    cidr_block = "173.31.1.0/16"
}
subnets = [
    {
        name = "Public Subnet"
        az = "us-east-1"
        cidr = "173.31.1.0/24"
    },
    {
        name = "Private Subnet"
        az = "us-east-1"
        cidr = "173.31.2.0/24"
    }
]
ami_webserver = {
    id ="ami-04b9e92b5572fa0d1"
    user = ubuntu
}
Webserver1 = {
    name        = "Webserver1"
    instance_type  = "t2.micro"
    private_ip     = "173.31.2.6"
}
Webserver2 = {
    name        = "Webserver2"
    instance_type  = "t2.micro"
    private_ip     = "173.31.2.7"
}
Webserver3 = {
    name        = "Webserver3"
    instance_type   = "t2.micro"
    private_ip      = "173.31.2.8"
}