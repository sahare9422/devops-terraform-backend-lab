#-----------------------------------------
# s3.tf
#-----------------------------------------
resource "aws_s3_bucket" "state_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "deployment_bucket_access" {
  bucket = aws_s3_bucket.state_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
#-----------------------------------------
# dynamodb.tf
#-----------------------------------------
resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  

  attribute {
    name = "LockID"
    type = "S"
  }
}