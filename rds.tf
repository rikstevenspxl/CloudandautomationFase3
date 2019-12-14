resource "aws_db_subnet_group" "RDSGroup" {
    name        = "main"
    subnet_ids = ["${aws_subnet.RDSSubnet1.id}", "${aws_subnet.RDSSubnet2.id}"]
    tags = {
        Name = "RDS Subnet group"
    }
}

resource "aws_db_instance" "fase3database" {
    identifier                = "fase3database"
    allocated_storage         = 20
    storage_type              = "gp2"
    engine                    = "mysql"
    engine_version            = "5.7.22"
    instance_class            = "db.t2.micro"
    name                      = "fase3database"
    username                  = "admin"
    password                  = "pxl2019!"
    port                      = 3306
    publicly_accessible       = false
    availability_zone         = "us-east-1a"
    vpc_security_group_ids  = ["${aws_security_group.RDSSecurityGroup.id}"]
    db_subnet_group_name      = "${aws_db_subnet_group.RDSGroup.id}"
    tags = {
        Name = "Fase3Database"
    }
}
