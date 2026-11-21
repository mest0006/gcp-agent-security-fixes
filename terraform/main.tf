provider "google" {
  project = var.project_id
  region  = var.region
}

module "artifact_registry" {
  source        = "./modules/artifact-registry"
  project_id    = var.project_id
  region        = var.region
  repository_id = var.repository_id
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
}

module "wif" {
  source            = "./modules/wif"
  project_id        = var.project_id
  github_repository = var.github_repository
}

module "ci_iam" {
  source                       = "./modules/iam"
  project_id                   = var.project_id
  region                       = var.region
  repository_id                = var.repository_id
  service_account_email        = module.wif.service_account_email
}

module "project_policies" {
  count      = var.enable_org_policies ? 1 : 0
  source     = "./modules/org-policies"
  project_id = var.project_id
}
