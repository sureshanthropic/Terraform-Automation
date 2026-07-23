variable "project_name" {
  description = "Display name of the GCP project"
  type        = string
  default     = "Landing Zone"
}

variable "gcp_project_id" {
  description = "GCP project ID"
  type        = string
}

variable "billing_account" {
  description = "Billing account ID"
  type        = string
}

variable "gcp_region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "landing-vpc"
}

variable "prd_subnet_name" {
  description = "Name of the production subnet"
  type        = string
  default     = "prd-subnet"
}

variable "prd_subnet_cidr" {
  description = "CIDR range for the production subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "dev_subnet_name" {
  description = "Name of the development subnet"
  type        = string
  default     = "dev-subnet"
}

variable "dev_subnet_cidr" {
  description = "CIDR range for the development subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "service_account_name" {
  description = "Name of the service account"
  type        = string
  default     = "landing-zone-sa"
}

variable "service_account_display_name" {
  description = "Display name of the service account"
  type        = string
  default     = "Landing Zone Service Account"
}

variable "service_account_roles" {
  description = "Roles to assign to the service account"
  type        = list(string)
  default     = ["roles/storage.objectAdmin"]
}
