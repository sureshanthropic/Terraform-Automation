variable "aws_region" {
  description = "AWS region for the state bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name for Terraform state"
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
