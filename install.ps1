# OpenClaw One-Click Install
# Run as: powershell -ExecutionPolicy Bypass -File install.ps1

$ErrorActionPreference = "Stop"

Write-Host "Installing OpenClaw..." -ForegroundColor Cyan

# 1. Install OpenClaw if not installed
if (-not (Get-Command openclaw -ErrorAction SilentlyContinue)) {
    Write-Host "OpenClaw not found. Installing..." -ForegroundColor Yellow
    npm install -g openclaw
}

# 2. Clone workspace
$workspace = "$env:USERPROFILE\.openclaw\workspace"
if (-not (Test-Path $workspace)) {
    git clone https://github.com/Kushtrvedi/openclaw.git $workspace
} else {
    Write-Host "Workspace already exists" -ForegroundColor Yellow
}

# 3. Run OpenClaw
Write-Host "Starting OpenClaw..." -ForegroundColor Green
openclaw run