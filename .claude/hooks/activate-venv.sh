#!/bin/bash
# Activate project virtual environment for all Claude Code Bash commands

VENV_DIR="$CLAUDE_PROJECT_DIR/.venv"

if [ -n "$CLAUDE_ENV_FILE" ] && [ -d "$VENV_DIR" ]; then
  echo "export VIRTUAL_ENV=\"$VENV_DIR\"" >> "$CLAUDE_ENV_FILE"
  echo "export PATH=\"$VENV_DIR/bin:\$PATH\"" >> "$CLAUDE_ENV_FILE"
fi

exit 0
