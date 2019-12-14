variable "region" {
    description = "Region the cloud works in"
    type = "string"
    default = "us-east-1"
}
variable "vpc" {
    type = "map"
}
variable "subnets" {
    type = "list"
}
variable "ami_webserver" {
    type = "map"
}
variable "Webserver1" {
    type = "map"
}
variable "Webserver2" {
    type = "map"
}
variable "Webserver3" {
    type = "map"
}
variable "ssh-Webserver" {
    default = "ssh-Webserver"
}
variable "ssh-Webserver2" {
    default = "ssh-Webserver2"
}
variable "ssh-Webserver3" {
    default = "ssh-Webserver3"
}