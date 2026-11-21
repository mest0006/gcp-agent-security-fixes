# STRIDE threat model

## Assets
GCP project, CI identity, Terraform configuration/state, GKE control plane and workloads, container images, review/evidence records.

## Trust boundaries
1. Developer workstation to source repository
2. GitHub Actions OIDC to Google Cloud WIF
3. Google IAM to Artifact Registry/GKE
4. Kubernetes API to workloads
5. AI coding agent to repository and any read-only security context

| STRIDE | Example risk | Primary control | Evidence to collect |
|---|---|---|---|
| Spoofing | CI identity impersonation | OIDC WIF restricted to repository | Provider config and successful auth log |
| Tampering | Unreviewed agent changes | PR review and protected workflow | Review record and diff |
| Repudiation | Remediation lacks provenance | Finding IDs and reviewer record | Agent review markdown |
| Information disclosure | Credential committed to repo | Keyless auth and secret exclusions | Secret scan/commit history |
| Denial of service | Overly restrictive policy breaks workload | Incremental policy changes and validation | Test/deployment result |
| Elevation of privilege | Agent proposes broad IAM | Least privilege and human rejection | Rejected-change record |

## AI-agent-specific risks
Prompt injection from external context, insecure autofix suggestions, excessive IAM expansion, suppression of scanner checks, fabricated evidence, and destructive infrastructure changes. Agent rules in `CLAUDE.md` are preventive controls; human review remains mandatory.
