variable "project_id" { type = string }
variable "region" { type = string }
variable "repository_id" { type = string }
variable "service_account_email" { type = string }
resource "google_artifact_registry_repository_iam_member" "ci_writer" {
  project    = var.project_id
  location   = var.region
  repository = var.repository_id
  role       = "roles/artifactregistry.writer"
  member     = "serviceAccount:${var.service_account_email}"
}
