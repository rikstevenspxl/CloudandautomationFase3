resource "aws_db_subnet_group" "RDSGroup" {
    name        = "main"
    subnet_ids = ["${aws_subnet.RDSSubnet1.id}", "${aws_subnet.RDSSubnet2.id}"]
    tags = {
        Name = "RDS Subnet group"
    }
}

resource "aws_db_instance" "database-1" {
    identifier                = "Fase3Database"
    allocated_storage         = 20
    storage_type              = "gp2"
    engine                    = "mysql"
    engine_version            = "5.7.22"
    instance_class            = "db.t2.micro"
    name                      = "database-1"
    username                  = "admin"
    password                  = "pxl2019!"
    port                      = 3306
    publicly_accessible       = false
    availability_zone         = "us-east-1a"
    security_group_names      = ["${aws_security_group.RDSSecurityGroup.id}"]
    db_subnet_group_name      = "${aws_db_subnet_group.RDSGroup.id}"
    tags = {
        Name = "Fase3Database"
    }
}
