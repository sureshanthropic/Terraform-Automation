variable "bucket_name" {
  description = "Name of the S3 bucket for Terraform state"
  type        = string
}

variable "environment" {
  description = "Environment tag for the bucket"
  type        = string
  default     = "dev"
}

variable "enable_lifecycle" {
  description = "Whether to enable lifecycle rules for old versions"
  type        = bool
  default     = true
}

variable "noncurrent_version_days" {
  description = "Number of days to retain noncurrent versions"
  type        = number
  default     = 30
}
