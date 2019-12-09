resource "aws_vpc" "Fase3vpc" {
    cidr_block           = "172.31.0.0/16"

    tags= {
        Name = "Fase3vpc"
    }
}
