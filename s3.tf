locals {
    tags = {
    Name        = "My bucket"
    Environment = "Dev-1"
    }
}

resource "aws_s3_bucket" "test" {
  bucket = var.s3_bucket_name
  tags = merge(locals.tags,var.tags)
}
