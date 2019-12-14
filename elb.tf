resource "aws_elb" "LoadBalancer" {
    name                        = "LoadBalancer"
    subnets                     = ["${aws_subnet.Public_Subnet.id}"]
    //availability_zones          = ["us-east-1a", "us-east-1b"]
    security_groups             = ["${aws_security_group.RDSSecurityGroup.id}"]
    instances                   = ["${aws_instance.Webserver1.id}","${aws_instance.Webserver2.id}","${aws_instance.Webserver3.id}"]
    cross_zone_load_balancing   = true
    idle_timeout                = 60
    connection_draining         = true
    connection_draining_timeout = 300
    internal                    = false

    listener {
        instance_port      = 80
        instance_protocol  = "http"
        lb_port            = 80
        lb_protocol        = "http"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 10
        unhealthy_threshold = 2
        interval            = 30
        target              = "HTTP:80/index.html"
        timeout             = 5
    }

    tags= {
        Name = "LoadBalancer"
    }
}
