#!/usr/bin/env sh
# Claude Code: add Liminal as a remote MCP server (API key).
claude mcp add liminal --transport http https://liminality.physea.ai/mcp --header "X-API-Key: YOUR_KEY"

# Or let Claude Code sign in through the browser (OAuth 2.1), no key in config:
# claude mcp add liminal --transport http https://liminality.physea.ai/mcp
