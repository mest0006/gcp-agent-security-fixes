variable "project_id" { type = string }
variable "region" { type = string }
resource "google_container_cluster" "secure" {
  name             = "security-lab-autopilot"
  location         = var.region
  enable_autopilot = true
  deletion_protection = false
  release_channel { channel = "REGULAR" }
  binary_authorization { evaluation_mode = "PROJECT_SINGLETON_POLICY_ENFORCE" }
}
output "cluster_name" { value = google_container_cluster.secure.name }
