terraform {
  backend "s3" {
    bucket         = "name of the bucket"
    key            = "path/to/terraform.tfstate"
    region         = "us-east-1"
  }
}
