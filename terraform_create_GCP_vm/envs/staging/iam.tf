resource "google_service_account" "dev_admin" {
  account_id   = "dev-admin"
  display_name = "Dev Admin Service Account"
}

resource "google_project_iam_member" "dev_admin_owner" {
  project = var.project_id
  role    = "roles/owner"
  member  = "serviceAccount:${google_service_account.dev_admin.email}"
}

resource "google_project_iam_member" "compute_system_instance_admin" {
  project = var.project_id
  role    = "roles/compute.instanceAdmin.v1"
  member  = "serviceAccount:service-${var.project_number}@compute-system.iam.gserviceaccount.com"
}

output "dev_admin_service_account_email" {
  value       = google_service_account.dev_admin.email
  description = "Email của service account full quyền cho môi trường dev"
}
