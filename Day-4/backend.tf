terraform {
  backend "s3" {
    bucket         = "vedant-s3-demo" # change this
    key            = "vedant/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}