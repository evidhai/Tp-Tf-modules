resource "aws_s3_bucket" "test" {
  bucket = var.bucket_name
  tags = merge(local.tags,var.tags)
}
