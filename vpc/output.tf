output "aws_vpc_id" {
  value = aws_vpc.testJenkins.id
}

output "pub_sub_id" {
  value = aws_subnet.pub_sub.id
}

output "priv_sub_id" {
  value = aws_subnet.priv_sub.id
}