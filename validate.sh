#!/usr/bin/env bash
set -euo pipefail
terraform -chdir=terraform fmt -check -recursive
terraform -chdir=terraform init -backend=false
terraform -chdir=terraform validate
if command -v checkov >/dev/null 2>&1; then
  checkov -d terraform --framework terraform
else
  echo "Checkov is not installed; Terraform validation completed, Checkov skipped." >&2
fi
