variable "project_id" { type = string }

# Prevent creation of new user-managed service-account keys at project scope.
resource "google_org_policy_policy" "disable_sa_key_creation" {
  name   = "projects/${var.project_id}/policies/iam.disableServiceAccountKeyCreation"
  parent = "projects/${var.project_id}"
  spec {
    rules { enforce = "TRUE" }
  }
}

# Prevent upload of public keys for service accounts at project scope.
resource "google_org_policy_policy" "disable_sa_key_upload" {
  name   = "projects/${var.project_id}/policies/iam.disableServiceAccountKeyUpload"
  parent = "projects/${var.project_id}"
  spec {
    rules { enforce = "TRUE" }
  }
}
