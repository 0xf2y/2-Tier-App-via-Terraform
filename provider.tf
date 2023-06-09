# Configure the provider software version
terraform {
  backend "s3" {
  bucket = "2tier-app-iti-elfeki"
    dynamodb_table = "lock_table_name"
  key    = "state"
  region = "us-east-1"
  encrypt = true
  access_key = ""
  secret_key = ""
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
