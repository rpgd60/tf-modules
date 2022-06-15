Possibly useful modules

## s3_backend: Simple module to create S3 backends with DynamoDB lock 

Source: 
  source = "github.com/rpgd60/tf-modules//modules/terraform/04-terraform-module/module-example/modules/services/webserver-cluster?ref=v0.2.0"
Creates a bucket 
- given "var.company", "var.project" and "var.environment" variables,  will create:
  - bucket with name : "tf-state-${var.company}-${var.project}-${var.environment}"
  - DynamoDB table : "tf-state-lock-${var.company}-${var.project}-${var.environment}" with hashkey LockID 

TODO:  Add a  random number or UUID to increase the chances that bucket names and DDB table names are unique

