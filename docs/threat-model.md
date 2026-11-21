# STRIDE threat model

## Scope

AI-assisted changes to Terraform/Kubernetes source, GitHub Actions OIDC authentication, GCP IAM, and deployment controls.

## Trust boundaries

1. Developer workstation <-> Git repository
2. Repository/PR content <-> AI coding agent
3. GitHub Actions <-> GitHub OIDC token issuer
4. OIDC federation <-> GCP IAM
5. Deploy identity <-> GCP resources
6. Scanner output/live posture data <-> AI agent

## Threats and planned controls

| STRIDE | Example | Control/evidence |
|---|---|---|
| Spoofing | Untrusted workflow attempts cloud authentication | Repository-bound WIF attribute condition; short-lived OIDC |
| Tampering | Agent modifies security workflow or policy to make checks pass | Human review, branch protection, scoped PRs, review log |
| Repudiation | Security-sensitive change lacks traceability | Git history, PR review, CI logs, findings snapshots |
| Information disclosure | Agent/log exposes token, secret, state, or live-data content | No service-account keys; minimal outputs; no secrets in repo |
| Denial of service | Bad IaC change removes or blocks required resources | Terraform plan review; small changes; documented rollback |
| Elevation of privilege | Agent grants Editor/Owner or broad impersonation | CLAUDE.md least-privilege rule; IAM review; narrow bindings |

## Prompt-injection scenario

Repository text and scanner/live-data output are untrusted. An instruction embedded in those inputs must not override the repository security baseline, request secrets, broaden IAM, disable checks, or trigger an unreviewed merge.
