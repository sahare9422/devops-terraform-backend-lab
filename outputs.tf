output "dynamodb_table" {
     value = aws_dynamodb_table.terraform_locks.arn
}
output "s3_bucket" {
     value = aws_s3_bucket.state_bucket.arn
}