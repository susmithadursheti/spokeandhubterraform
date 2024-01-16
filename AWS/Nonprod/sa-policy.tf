resource "aws_s3_bucket" "sa" {
  bucket = "policy-bucket-spokehub"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "enabled_S" {
  bucket = aws_s3_bucket.sa.id
  versioning_configuration {
    status = "Enabled"
  }
}