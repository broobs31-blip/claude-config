#!/usr/bin/env bash
# Installe les agents et le CLAUDE.md global dans ~/.claude
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.claude/agents"
cp "$SRC"/agents/*.md "$HOME/.claude/agents/" 2>/dev/null || true
cp "$SRC/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
echo "claude-config : $(ls "$HOME/.claude/agents" | wc -l) agent(s) installé(s)"
