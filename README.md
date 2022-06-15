## s3_backend

Simple module to create S3 backends with DynamoDB lock 

source = "github.com/rpgd60/tf-modules//s3-backend/?ref=v0.9.0"

Creates a bucket 
- given "var.company", "var.project" and "var.environment" variables,  will create:
  - bucket with name : "tf-state-${var.company}-${var.project}-${var.environment}"
  - DynamoDB table : "tf-state-lock-${var.company}-${var.project}-${var.environment}" with hashkey LockID 

TODO:  Add a  random number or UUID to increase the chances that bucket names and DDB table names are unique

Sample code

```
module s3_backend {
    source = "github.com/rpgd60/tf-modules//s3-backend/"

    company = var.company
    project = var.project
    environment = var.environment
}
```