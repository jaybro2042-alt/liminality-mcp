<p align="center"><img src="assets/logo.png" width="120" alt="Liminality"></p>

<h1 align="center">Liminality</h1>

<p align="center">Hand it the hard part: tough questions, real decisions, multi-step tasks, over MCP.</p>

---

Liminality takes a hard question, a decision, or a multi-step task, breaks it into the
sub-questions that actually decide the answer, ties each one to a real tool or endpoint, and
gives you back a worked result you can check and reuse. For a choice you get a scored decision
frame; for a question, a grounded answer. It earns its keep on the work that one-shot guessing
gets wrong, the hard and high-stakes stuff, not quick lookups.

Every solved ask is saved as a reusable route in a shared library, so the second time someone
asks something close, it comes back faster and costs less. It runs as a hosted remote server
over streamable HTTP. The first few asks on a new key are free.

## Connect

Remote server, nothing to install:

```json
{ "mcpServers": { "liminality": { "url": "https://liminality.physea.ai/mcp" } } }
```

- **Endpoint:** `https://liminality.physea.ai/mcp`
- **Transport:** streamable HTTP (remote/hosted)
- **Auth:** API key (`X-API-Key` or `Authorization: Bearer`) or OAuth2. Free tier on a new key.
- **Get a key / docs:** https://physea.ai/mcp

## Tools

- **`solve`** — the front door. Give it anything non-trivial; it works out the structure
  (decompose → ground to real tools → score the decision) and returns a worked result: a scored
  decision frame for a choice, or a grounded answer for a question.
- **Discovery and settings:** `get_capabilities`, `get_settings`, `set_settings`
- **Result detail:** `get_result_detail`, `export_result`
- **Cross-session context:** `create_handoff`, `resume_handoff`, `compress_context`
- **Agent delegation:** `create_delegation`, `resume_delegation`, `report_delegation`
- **Grounding and priorities:** `register_asset`, `set_priorities`, `taxis`
- **Research and connections:** `research`, `composio_connect`
- **Forms and learning:** `ask_form`, `apply_form`, `report_feedback`, `report_outcome`, `apply_grade`
- **Compatibility:** `manage` retains older context-lifecycle action routing.

The hosted server exposes 23 caller-scoped tools. Raw engine methods, private chain-of-thought,
owner administration, and other callers' stored content are not part of the public surface.

## Discovery / manifests

- `https://mcp.physea.ai/.well-known/mcp`
- `https://mcp.physea.ai/.well-known/agent.json`
- `https://mcp.physea.ai/.well-known/ai-plugin.json`
- `https://mcp.physea.ai/llms.txt`

## Links

- Site & docs: https://physea.ai/mcp
- Privacy: https://physea.ai/privacy-policy
- By [Physea](https://physea.ai)

---

© 2026 Physea. All rights reserved. "Liminality", the name, and the logo are trademarks of
Physea. This repository is a listing for a hosted service; no rights to the service, its
software, or its data are granted. Use of the service is governed by the terms at
https://physea.ai/mcp.
