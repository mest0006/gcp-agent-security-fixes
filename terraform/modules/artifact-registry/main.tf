variable "project_id" { type = string }
variable "region" { type = string }
variable "repository_id" { type = string }
resource "google_artifact_registry_repository" "images" {
  location      = var.region
  repository_id = var.repository_id
  format        = "DOCKER"
  description   = "Container images for the security portfolio project"
}
output "repository_name" { value = google_artifact_registry_repository.images.name }
