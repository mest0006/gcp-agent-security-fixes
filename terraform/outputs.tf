output "cluster_name" { value = module.gke.cluster_name }
output "artifact_registry_repository" { value = module.artifact_registry.repository_name }
output "ci_service_account" { value = module.wif.service_account_email }
output "workload_identity_provider" { value = module.wif.provider_name }
