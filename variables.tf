variable "s3_bucket_name" {
  type = string
  description = "S3 bucket name for Terraform state storage"

  validation {
    condition = can(regex("^[a-z0-9-.]{3,63}$", var.s3_bucket_name))
    error_message = "Invalid S3 bucket name. See https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html#general-purpose-bucket-names for more details."
  }
}

variable "dynamodb_table_name" {
  type = string
  description = "DynamoDB table name for Terraform state locking"

  validation {
    condition = can(regex("^[a-zA-Z0-9-_.]{3,255}$", var.dynamodb_table_name))
    error_message = "Invalid DynamoDB table name. See https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.NamingRules for more details."
  }
}