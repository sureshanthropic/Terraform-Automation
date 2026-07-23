terraform {
  backend "s3" {
    bucket = "your-unique-tf-state-bucket-name"
    key    = "landing-zone/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
