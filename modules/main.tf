resource "aws_s3_bucket" "test" {
  bucket = "tt-${var.bucket_name}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}