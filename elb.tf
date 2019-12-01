resource "aws_elb" "LoadBalancer" {
    name                        = "LoadBalancer"
    subnets                     = ["subnet-17542129", "subnet-9e9564d3", "subnet-c2acb4cd", "subnet-f14468df", "subnet-f3795baf", "subnet-f391b794"]
    security_groups             = ["sg-002aa499b0eac4f39"]
    instances                   = []
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
