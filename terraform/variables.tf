variable "project_id" { type = string }
variable "region" { type = string; default = "northamerica-northeast1" }
variable "repository_id" { type = string; default = "secure-images" }
variable "github_repository" { type = string; description = "GitHub repository in owner/name form" }
variable "enable_org_policies" { type = bool; default = false }
