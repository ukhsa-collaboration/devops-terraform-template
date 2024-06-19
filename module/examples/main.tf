# AWS S3 Bucket module from the Terraform Registry
module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.0.0"

  bucket = "my-example-bucket" # Change this to your desired bucket name
  acl    = "private"

  tags = {
    Name        = "My example bucket"
    Environment = "Dev"
  }
}

# Output the bucket name
output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3_bucket.bucket_id
}
