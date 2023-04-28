variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}
variable "pub_cidr_block" {
    default = "10.0.1.0/24"
}
variable "priv_cidr_block" {
    default = "10.0.2.0/24"
}
variable "region" {
    default ="eu-west-2"
}