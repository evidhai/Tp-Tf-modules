resource "aws_instance" "web" {
  # ami           = "ami-0ca285d4c2cda3300"
  ami           = chomp(var.ami_id)
  instance_type = "t2.micro"
  vpc_security_group_ids = var.ec2_sg_ids
  availability_zone      = var.availability_zone
  tags =  merge(local.tags,var.tags)
}
