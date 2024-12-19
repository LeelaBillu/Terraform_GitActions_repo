terraform {
  backend "s3" {
    bucket         = "lee-bucket-1"    # Replace with your actual S3 bucket name
    key            = "Dev/terraform.tfstate"
    region         = "us-east-1"  # Path inside the "dev" folder for the state file
    dynamodb_table = "my-lock-table"         # DynamoDB table for state locking
    encrypt        = true                    # Enable encryption for the state file in S3
  }
}
