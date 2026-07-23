# Terraform example: GCP landing zone + Google Cloud Storage bucket

This example creates:
- a GCP project and enables core APIs
- a VPC and subnet for a basic landing zone
- a Google Cloud Storage bucket with uniform bucket-level access
- a service account for landing-zone operations
- a lifecycle rule that transitions objects to STANDARD_IA after 30 days

## Prerequisites
- Terraform installed
- GCP credentials configured with `gcloud auth application-default login`
- A valid GCP billing account ID

## Files
- `main.tf` contains the GCP resources
- `variables.tf` defines the configurable inputs
- `providers.tf` configures the Google provider
- `versions.tf` pins the Terraform and provider versions
- `terraform.tfvars` contains your actual values

## Usage

1. Review and update the values in `terraform.tfvars`.
2. If you want to use the S3 backend, update the bucket name in `backend.tf` and run:

```bash
terraform init -reconfigure
terraform plan
terraform apply
```

3. If you are using the separate state backend module, run it first with:

```bash
terraform -chdir=terraform init -var-file=state_backend.tfvars
terraform -chdir=terraform apply -var-file=state_backend.tfvars
```

## Example `terraform.tfvars`

```hcl
gcp_project_id               = "PROD-VPC"
billing_account              = "sureshanthropic"
bucket_name                  = "prod-vpc-storage-12345"
bucket_location              = "US"
bucket_storage_class         = "STANDARD"
service_account_name         = "landing-zone-sa"
service_account_display_name = "Landing Zone Service Account"
service_account_roles        = ["roles/storage.objectAdmin"]
```

## Notes
- The Google Cloud Storage bucket is created with uniform bucket-level access, which helps keep access control consistent and avoids public ACL-based exposure.
- The GCP project resource requires a valid billing account ID.
