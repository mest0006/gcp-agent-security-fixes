# Milestone: findings -> agent remediation -> reviewed fixes

1. Deploy only to an authorized GCP project.
2. Capture baseline Terraform/Checkov and applicable GKE/CIS findings.
3. Save findings unchanged in `security/evidence/`.
4. Give a narrowly scoped finding to the AI coding agent under `CLAUDE.md`.
5. Record the proposed patch in a review record.
6. Human-review the patch for least privilege, blast radius, and whether it disables a security control.
7. Accept, modify, or reject the change.
8. Re-run validation and preserve before/after evidence.
9. Update the resume only with verified outcomes.
