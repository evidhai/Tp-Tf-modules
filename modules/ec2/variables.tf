variable "tags" {
  type = map
  default = {}
}

variable "ami_id" {
  type    = string
  default = "ami-0ca285d4c2cda3300\n"
  validation {
    condition     = can(regex("^ami.*", var.ami_id))
    error_message = "no regex match , it should begin with ami"
  }
}

variable "ec2_sg_ids" {
  type = list
  default = []
  description = "SG to mount on ec2"
}

variable "availability_zone" {
  type = string
  default = "us-west-2a"
  description = "AZ for ec2 creation" 
}