#!/bin/bash

# Script to remove unwanted repositories
# This script will delete local directories for repositories that have been removed from README.md

set -e  # Exit on error

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Removing unwanted repositories...${NC}\n"

# List of repositories to remove
REPOS_TO_REMOVE=(
    "claude_code_sdk_elixir"
    "jido_bug_demo"
)

# Get the parent directory (assuming repos are one level up from this script)
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_DIR="$(dirname "$SCRIPT_DIR")"

# Counter for tracking
REMOVED=0
NOT_FOUND=0

for repo in "${REPOS_TO_REMOVE[@]}"; do
    REPO_PATH="$PARENT_DIR/$repo"

    if [ -d "$REPO_PATH" ]; then
        echo -e "${YELLOW}Removing: ${NC}$REPO_PATH"
        rm -rf "$REPO_PATH"
        echo -e "${GREEN}✓ Removed${NC}\n"
        ((REMOVED++))
    else
        echo -e "${RED}✗ Not found: ${NC}$REPO_PATH"
        echo -e "  (already removed or not in expected location)\n"
        ((NOT_FOUND++))
    fi
done

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}Summary:${NC}"
echo -e "  Removed: ${GREEN}$REMOVED${NC}"
echo -e "  Not found: ${YELLOW}$NOT_FOUND${NC}"
echo -e "${GREEN}========================================${NC}"
