resource "aws_s3_bucket" "upload_bucket" {
  bucket = var.upload_bucket_name

  tags = {
    Name        = "file-upload-bucket"
    Environment = "dev"
    Project     = "s3-file-processing"
  }

}

resource "aws_s3_bucket_versioning" "upload_bucket_versioning" {
  bucket = aws_s3_bucket.upload_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "upload_bucket_encryption" {
  bucket = aws_s3_bucket.upload_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
