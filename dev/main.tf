provider "aws" {
    region = var.region
}

#Create VPC
module "vpc" {
  source = "../vpc"
  vpc_cidr_block = var.vpc_cidr_block
  pub_cidr_block = var.pub_cidr_block
  priv_cidr_block = var.priv_cidr_block
  region = var.region



}