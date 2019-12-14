region = "us-east-1"

vpc = {
    name = "Fase3vpc"
    cidr_block = "172.31.0.0/16"
}
subnets = [
    {
        name = "Public_Subnet"
        az = "us-east-1"
        cidr = "172.31.1.0/24"
    },
    {
        name = "Private_Subnet"
        az = "us-east-1"
        cidr = "172.31.2.0/24"
    }
]
ami_webserver = {
    id ="ami-04b9e92b5572fa0d1"
}
Webserver1 = {
    name        = "Webserver1"
    instance_type  = "t2.micro"
    private_ip     = "172.31.2.6"
}
Webserver2 = {
    name        = "Webserver2"
    instance_type  = "t2.micro"
    private_ip     = "172.31.2.7"
}
Webserver3 = {
    name        = "Webserver3"
    instance_type   = "t2.micro"
    private_ip      = "172.31.2.8"
}