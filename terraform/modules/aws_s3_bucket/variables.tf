variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag value"
  type        = string
  default     = "dev"
}

variable "enable_lifecycle" {
  description = "Enable lifecycle management for old versions"
  type        = bool
  default     = true
}

variable "noncurrent_version_days" {
  description = "Days to retain noncurrent versions"
  type        = number
  default     = 30
}
