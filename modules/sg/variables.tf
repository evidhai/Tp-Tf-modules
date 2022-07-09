variable "ingress_variable" {
  type = list
  default = [{
    description     = "for"
    from_port       =  443 
    to_port         = 443
    protocol        = "tcp"
    ipv4_list       = ["103.92.100.131/32", "183.82.29.107/32"]
    ipv6_list       = []
    prefix_list_ids = []
    security_groups = []
    self            = false
    }, {
    description     = "HTTP from VPC"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    ipv4_list       = ["103.92.100.131/32", "183.82.29.107/32"]
    ipv6_list       = []
    prefix_list_ids = []
    security_groups = []
    self            = false
    },
    {
      description     = "RDP from VPC"
      from_port       = 3389
      to_port         = 3389
      protocol        = "tcp"
      ipv4_list       = ["103.92.100.131/32", "183.82.29.107/32"]
      ipv6_list       = []
      prefix_list_ids = []
      security_groups = []
      self            = false
    },
    {
      description     = "RDP from VPC"
      from_port       = 443
      to_port         = 443
      protocol        = "tcp"
      ipv4_list       = ["103.92.100.200/32", "183.82.29.200/32"]
      ipv6_list       = []
      prefix_list_ids = []
      security_groups = []
      self            = false
    }
  ]

}

variable "tags" {
  type = map
  default = {}
}

variable "sg_name" {
  type = string
  
}

variable "sg_description" {
  type = string
}