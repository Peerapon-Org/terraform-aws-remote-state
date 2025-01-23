## terraform-aws-remote-state

This module creates AWS S3 bucket and DynamoDB table for remote state management

## Usage

```HCL
module "remote-state" {
  source                = "Peerapon-Org/remote-state/aws"
  version               = "1.0.1"

  s3_bucket_name        = "terraform-remote-state-bucket"
  dynamodb_table_name   = "terraform-state-lock-table"
}
```

**s3_bucket_name** must comply with the [AWS S3 bucket naming rule](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html#general-purpose-bucket-names)  
**dynamodb_table_name** must comply with the [AWS DynamoDB table naming rule](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.NamingRules)
