output "sg" {
  value = aws_security_group.allow_port_443
}

output "sg_id" {
  value = aws_security_group.allow_port_443.id
}
