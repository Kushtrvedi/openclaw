#!/bin/bash
# OpenClaw One-Click Install (Mac/Linux)
# Run as: bash install.sh

echo "Installing OpenClaw..."

# 1. Install OpenClaw if not installed
if ! command -v openclaw &> /dev/null; then
    echo "OpenClaw not found. Installing..."
    npm install -g openclaw
fi

# 2. Clone workspace
workspace="$HOME/.openclaw/workspace"
if [ ! -d "$workspace" ]; then
    git clone https://github.com/Kushtrvedi/openclaw.git "$workspace"
else
    echo "Workspace already exists"
fi

# 3. Run OpenClaw
echo "Starting OpenClaw..."
openclaw run