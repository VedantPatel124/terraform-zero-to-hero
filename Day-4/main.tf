provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "vedant" {
  instance_type = "t2.micro"
  ami = "ami-0cfde0ea8edd312d4" # change this
  subnet_id = "subnet-07ac8fa64f082a715" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "vedant-s3-demo" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}