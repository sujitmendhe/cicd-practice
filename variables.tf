variable "aws_region" {
    description = "Aws region for this project"
    type = string
    default = "us-east-1"  
}

variable "upload_bucket_name" {
    description = "S3 bucket name for client file upload"
    type = string
  
}