terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket18813093"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}