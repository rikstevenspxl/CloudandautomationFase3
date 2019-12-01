resource "aws_db_instance" "database-1" {
    identifier                = "database-1"
    allocated_storage         = 20
    storage_type              = "gp2"
    engine                    = "mysql"
    engine_version            = "5.7.22"
    instance_class            = "db.t2.micro"
    name                      = ""
    username                  = "admin"
    password                  = "xxxxxxxx"
    port                      = 3306
    publicly_accessible       = false
    availability_zone         = "us-east-1c"
    security_group_names      = []
    vpc_security_group_ids    = ["sg-082f19b2b0ab1da6f"]
    db_subnet_group_name      = "default-vpc-e884f692"
    parameter_group_name      = "default.mysql5.7"
    multi_az                  = false
    backup_retention_period   = 7
    backup_window             = "08:23-08:53"
    maintenance_window        = "sat:03:05-sat:03:35"
    final_snapshot_identifier = "database-1-final"
}
