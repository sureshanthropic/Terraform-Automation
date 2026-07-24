variable "aws_region" {
  description = "AWS region for the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "gcp_project_id" {
  description = "GCP project ID for the landing zone"
  type        = string
}

variable "gcp_region" {
  description = "Default GCP region"
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "Default GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "billing_account" {
  description = "Billing account ID for the new GCP project"
  type        = string
}

variable "bucket_name" {
  description = "Name of the Google Cloud Storage bucket"
  type        = string
}

variable "bucket_location" {
  description = "Location for the Google Cloud Storage bucket"
  type        = string
  default     = "US"
}

variable "bucket_storage_class" {
  description = "Storage class for the Google Cloud Storage bucket"
  type        = string
  default     = "STANDARD"
}

variable "service_account_name" {
  description = "Name of the GCP service account"
  type        = string
  default     = "landing-zone-sa"
}

variable "service_account_display_name" {
  description = "Display name for the GCP service account"
  type        = string
  default     = "Landing Zone Service Account"
}

variable "service_account_roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
  default     = ["roles/storage.objectAdmin"]
}

variable "bucket_lifecycle_days" {
  description = "Number of days before objects are deleted"
  type        = number
  default     = 30
}