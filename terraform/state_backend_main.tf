provider "aws" {
  region = var.aws_region
}

module "state_backend" {
  source = "./modules/state_backend"

  bucket_name            = var.bucket_name
  environment            = var.environment
  enable_lifecycle       = var.enable_lifecycle
  noncurrent_version_days = var.noncurrent_version_days
}

output "state_bucket_name" {
  value = module.state_backend.bucket_name
}
