resource "aws_s3_bucket" "terraform_state" {
  bucket = "tf-state-${var.company}-${var.project}-${var.environment}"

  #  Protect against bucket deletion - uncomment when ready 
      # lifecycle {
      #   prevent_destroy = true
      # }
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "block_public" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

## DynamoDB table for locking state in S3
resource "aws_dynamodb_table" "terraform_state_locks" {
  name         = "tf-state-lock-${var.company}-${var.project}-${var.environment}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

