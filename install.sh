#!/bin/bash
# Dotfiles install script - runs automatically on new Codespace

# Install Claude Code
if ! command -v claude &> /dev/null; then
  echo "Installing Claude Code..."
  npm install -g @anthropic-ai/claude-code
fi

# Setup Claude global memory
mkdir -p "$HOME/.claude"
cp -f "$(dirname "$0")/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"

echo "Done! Claude Code (เร) is ready."
