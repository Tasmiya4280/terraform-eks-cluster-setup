terraform {
  backend "s3" {
    bucket         = "remote-backend-bucket-4at"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-backend-db"
  }
}
