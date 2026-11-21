# Read-only security context / MCP design

Planned component: expose narrowly scoped, read-only security posture context to an AI coding agent without granting mutation rights.

Design requirements:
- no credentials in prompts or repository
- read-only identity and API permissions
- explicit allowlist of data sources
- sanitize untrusted text and treat retrieved content as data, not instructions
- auditable request/response metadata with sensitive values redacted
- agent cannot use this interface to change IAM, policies, clusters, images, or source code

This folder is intentionally a design scaffold until a concrete MCP implementation and authorized data source are selected.
