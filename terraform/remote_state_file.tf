resource "aws_s3_bucket" "terraform_state" {
  bucket = var.statefile_s3
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.statefile_dynamodb
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}