output "vpc_sg" {
  value = aws_security_group.my_sg.id
}

output "vpc_sn" {
  value = aws_subnet.public_subnet.id
}