resource "google_project" "landing_zone" {
  name            = var.project_name
  project_id      = var.gcp_project_id
  billing_account = var.billing_account
}

resource "google_project_service" "enabled_apis" {
  for_each = toset([
    "compute.googleapis.com",
    "iam.googleapis.com",
    "storage.googleapis.com",
    "cloudresourcemanager.googleapis.com"
  ])

  project = google_project.landing_zone.project_id
  service = each.value

  disable_on_destroy = false
}

resource "google_compute_network" "landing_vpc" {
  name                    = var.vpc_name
  project                 = google_project.landing_zone.project_id
  auto_create_subnetworks = false

  depends_on = [google_project_service.enabled_apis]
}

resource "google_compute_subnetwork" "prd_subnet" {
  name          = var.prd_subnet_name
  project       = google_project.landing_zone.project_id
  region        = var.gcp_region
  network       = google_compute_network.landing_vpc.id
  ip_cidr_range = var.prd_subnet_cidr
}

resource "google_compute_subnetwork" "dev_subnet" {
  name          = var.dev_subnet_name
  project       = google_project.landing_zone.project_id
  region        = var.gcp_region
  network       = google_compute_network.landing_vpc.id
  ip_cidr_range = var.dev_subnet_cidr
}

resource "google_service_account" "landing_sa" {
  account_id   = var.service_account_name
  display_name = var.service_account_display_name
  project      = google_project.landing_zone.project_id
}

resource "google_project_iam_member" "service_account_roles" {
  for_each = toset(var.service_account_roles)

  project = google_project.landing_zone.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.landing_sa.email}"
}
