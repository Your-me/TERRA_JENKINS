resource "aws_vpc" "testJenkins" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "testJenkins"
  }
}

resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.testJenkins.id
  cidr_block = var.pub_cidr_block

  tags = {
    Name = "pub_sub"
  }
}

resource "aws_subnet" "priv_sub" {
  vpc_id     = aws_vpc.testJenkins.id
  cidr_block = var.priv_cidr_block

  tags = {
    Name = "priv_sub"
  }
}