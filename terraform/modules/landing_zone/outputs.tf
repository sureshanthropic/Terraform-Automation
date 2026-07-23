output "project_id" {
  description = "The GCP project ID created for the landing zone"
  value       = google_project.landing_zone.project_id
}

output "vpc_name" {
  description = "The name of the VPC created for the landing zone"
  value       = google_compute_network.landing_vpc.name
}

output "service_account_email" {
  description = "The email of the landing-zone service account"
  value       = google_service_account.landing_sa.email
}
