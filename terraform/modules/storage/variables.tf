variable "project_id" {
  description = "GCP project ID where the bucket will be created"
  type        = string
}

variable "bucket_name" {
  description = "Name of the Google Cloud Storage bucket"
  type        = string
}

variable "bucket_location" {
  description = "Location for the bucket"
  type        = string
  default     = "US"
}

variable "bucket_storage_class" {
  description = "Storage class for the bucket"
  type        = string
  default     = "STANDARD"
}

variable "lifecycle_age_days" {
  description = "Age in days before applying the lifecycle rule"
  type        = number
  default     = 30
}

variable "lifecycle_target_storage_class" {
  description = "Target storage class for the lifecycle transition"
  type        = string
  default     = "STANDARD_IA"
}
