# gcp-agent-security-fixes

Portfolio project demonstrating security-by-design for Google Cloud infrastructure, GKE, CI identity, IaC scanning, and human-reviewed AI remediation.

> Status: local scaffold. No deployment or scanner results are claimed until generated against a real GCP environment.

## Security goals
- Keyless CI authentication through Workload Identity Federation
- Least-privilege IAM for CI and workloads
- Hardened GKE Autopilot baseline
- Artifact Registry with controlled writer access
- Binary Authorization scaffold
- Kubernetes Pod Security plus default-deny network policy
- Terraform security scanning with Checkov
- Organization-policy examples, applied only at scopes where permissions allow
- AI-agent workflow with explicit security rules and human review
- STRIDE threat model and evidence trail

## Repository layout
- `terraform/` infrastructure modules and example composition
- `kubernetes/` workload-security manifests
- `security/checkov/` scanner configuration
- `security/threat-model/` STRIDE analysis
- `security/agent-review/` remediation/review records
- `security/evidence/` real deployment and scan outputs belong here
- `.github/workflows/` validation pipeline
- `CLAUDE.md` AI coding-agent guardrails
- `mcp/` design notes for a future read-only security context provider

## Local validation
Run `./validate.sh` after installing Terraform and Checkov. Validation does not deploy resources.

## Deployment boundary
This repository intentionally does not invent output, policy compliance, scanner findings, or remediation success. Populate `security/evidence/` only with real command/scanner output from your own authorized GCP project.
