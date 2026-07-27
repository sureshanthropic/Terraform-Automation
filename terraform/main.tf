module "landing_zone" {
  source = "./modules/landing_zone"

  gcp_project_id               = var.gcp_project_id
  billing_account              = var.billing_account
  gcp_region                   = var.gcp_region
  project_name                 = "Landing Zone"
  vpc_name                     = "landing-vpc"
  prd_subnet_name              = "prd-subnet"
  prd_subnet_cidr              = "192.168.1.0/24"
  dev_subnet_name              = "dev-subnet"
  dev_subnet_cidr              = "192.168.2.0/24"
  service_account_name         = var.service_account_name
  service_account_display_name = var.service_account_display_name
  service_account_roles        = var.service_account_roles
}

module "storage" {
  source = "./modules/storage"

  project_id                  = module.landing_zone.project_id
  bucket_name                 = var.bucket_name
  bucket_location             = var.bucket_location
  bucket_storage_class        = var.bucket_storage_class
  lifecycle_age_days          = 30
  lifecycle_target_storage_class = "STANDARD_IA"
}


output "gcp_project_id" {
  value = module.landing_zone.project_id
}

output "gcp_vpc_name" {
  value = module.landing_zone.vpc_name
}

output "gcp_service_account_email" {
  value = module.landing_zone.service_account_email
}

output "gcp_storage_bucket_name" {
  value = module.storage.bucket_name
}

