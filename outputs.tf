output "s3_bucket_name" {
  value = aws_s3_bucket.state_bucket.id
  description = "S3 bucket name for Terraform state storage"
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.state_lock_table.name
  description = "DynamoDB table name for Terraform state Locking"
}