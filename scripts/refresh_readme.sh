#!/bin/bash

# Refresh README.md with latest GitHub star counts
# This script fetches the latest repo data and updates the README

set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Refreshing README with latest star counts ==="
echo ""

# Step 1: Fetch latest repository data
echo "Step 1/2: Fetching latest repository data from GitHub..."
"${SCRIPT_DIR}/get_elixir_projects.sh"
echo ""

# Step 2: Update README with the new data
echo "Step 2/2: Updating README.md with latest star counts..."
"${SCRIPT_DIR}/update_readme_stars.sh"

echo ""
echo "=== Done! README.md has been refreshed with the latest data ==="
