terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.95.0, < 6.0.0"
    }
  }

  backend "s3" {
    bucket         = "mahakal-bucket-sanjay-2026"   # your S3 bucket name
    key            = "eks/dev/terraform.tfstate"    # state file path
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"         # your DynamoDB table
    encrypt        = true
  }
}
