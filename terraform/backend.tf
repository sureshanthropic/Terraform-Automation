terraform {
  backend "s3" {
    bucket  = "terraform-bucket-for-ackend"
    key     = "landing-zone/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
