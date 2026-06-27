<p align="center"><img src="assets/logo.png" width="120" alt="Liminality"></p>

<h1 align="center">Liminality</h1>

<p align="center">An MCP server that breaks a hard question or decision into the sub-questions that actually decide it, ties each to a real tool, and hands back a worked answer you can check.</p>

<p align="center"><b><a href="https://physea.ai/mcp">Docs</a></b> · <b><a href="https://physea.ai/signup">Get a key</a></b></p>

---

Give Liminality a tough question, a real decision, or a multi-step task. It decomposes the
request into the sub-questions that change the outcome, grounds each one in a real tool or
endpoint, and returns a result you can verify: a scored decision frame for a choice, a grounded
answer for a question. It earns its keep on the work one-shot guessing gets wrong, the hard and
high-stakes stuff, not quick lookups.

Every solved ask is saved as a reusable route in a shared library, so the next close question
comes back faster and cheaper. It runs as a hosted remote server over streamable HTTP. The first
few asks on a new key are free.

## Install

Remote server, nothing to build or run locally. Get a key at https://physea.ai/signup, then add
it to your client.

**Claude Code**

```bash
claude mcp add liminality --transport http https://liminality.physea.ai/mcp --header "X-API-Key: YOUR_KEY"
```

**Cursor**

Add to `~/.cursor/mcp.json`:

```json
{
  "mcpServers": {
    "liminality": {
      "url": "https://liminality.physea.ai/mcp",
      "headers": { "X-API-Key": "YOUR_KEY" }
    }
  }
}
```

**VS Code**

Add to `.vscode/mcp.json`:

```json
{
  "servers": {
    "liminality": {
      "type": "http",
      "url": "https://liminality.physea.ai/mcp",
      "headers": { "X-API-Key": "YOUR_KEY" }
    }
  }
}
```

- **Endpoint:** `https://liminality.physea.ai/mcp`
- **Transport:** streamable HTTP (remote, hosted)
- **Auth:** API key via `X-API-Key` or `Authorization: Bearer`, or OAuth 2.1. Free tier on a new key.

## What it is

Liminality is a reasoning layer that sits between your agent and the tools it could call. Instead
of answering from memory, it works out the structure of the request first, then routes each piece
to something real.

It runs on context-dependent determinism. Same question with the same known context routes the
same way every time, so a result is reproducible and you can hand the route to someone else and
get the same thing back. Change the context, and the route adapts to it. The determinism is in
how it decides, not a frozen cache of canned answers.

## Tools

- **`solve`** is the front door. Give it anything non-trivial. It works out the structure
  (decompose, ground to real tools, score the decision) and returns a worked result: a scored
  decision frame for a choice, or a grounded answer for a question.
- `research` runs a deeper multi-source pass that pulls real information for a question.
- `ask_form` / `apply_form`: when the answer depends on your specifics, it hands back a short
  multiple-choice form. Relay it, then `apply_form` folds the answers into a sharper result.
- `get_my_context`: what's known about you and what you've connected.
- `register_asset` / `set_preference`: tell it about your material and how you like results.
- `report_feedback` / `report_outcome`: tell it how a result did, so routes improve with use.
- `composio_connect`: connect a tool so an action can run against it.

## Discovery

- `https://liminality.physea.ai/.well-known/mcp`
- `https://liminality.physea.ai/.well-known/agent.json`
- `https://liminality.physea.ai/llms.txt`

## Links

- Site and docs: https://physea.ai/mcp
- Get a key: https://physea.ai/signup
- Privacy: https://physea.ai/privacy-policy
- By [Physea](https://physea.ai)

---

© 2026 Physea. All rights reserved. "Liminality", the name, and the logo are trademarks of
Physea. This repository is a listing for a hosted service; no rights to the service, its
software, or its data are granted. Use of the service is governed by the terms at
https://physea.ai/mcp.
