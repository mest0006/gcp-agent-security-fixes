variable "project_id" { type = string }
variable "region" { type = string  default = "northamerica-northeast1" }
variable "github_repository" {
  description = "GitHub repository in owner/name form."
  type        = string
}
variable "artifact_repository_id" { type = string default = "secure-images" }
variable "cluster_name" { type = string default = "security-lab" }
