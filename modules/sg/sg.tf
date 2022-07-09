resource "aws_security_group" "allow_port_443" {
  name        = var.sg_name
  description = var.sg_description
  dynamic "ingress" {
    for_each = var.ingress_variable
    content {
      description      = length(ingress.value.description) < 5 ? ingress.value.description : "dummy"
      from_port        = ingress.value.from_port
      to_port          = ingress.value.to_port
      protocol         = ingress.value.protocol
      cidr_blocks      = ingress.value.ipv4_list
      ipv6_cidr_blocks = ingress.value.ipv6_list
      prefix_list_ids  = ingress.value.prefix_list_ids
      security_groups  = ingress.value.security_groups
      self             = ingress.value.self
    }
  }
}