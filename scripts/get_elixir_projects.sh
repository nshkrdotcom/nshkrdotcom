#!/bin/bash

# Get all Elixir projects from GitHub for user nshkrdotcom and org North-Shore-AI
# Output format: JSON with comprehensive metadata
# Usage: ./get_elixir_projects.sh [--include-private]

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_FILE="${SCRIPT_DIR}/elixir_projects.json"

# Repositories that must be included even if GitHub's language heuristics
# exclude them from the Elixir search results (e.g., empty/new repos)
EXTRA_REPOS=(
  "nshkrdotcom/mcp_client"
)

# Parse CLI arguments
INCLUDE_PRIVATE=false
while [[ $# -gt 0 ]]; do
  case $1 in
    --include-private)
      INCLUDE_PRIVATE=true
      shift
      ;;
    *)
      echo "Unknown option: $1"
      echo "Usage: $0 [--include-private]"
      exit 1
      ;;
  esac
done

# Build the jq filter based on private repo preference
if [ "$INCLUDE_PRIVATE" = true ]; then
  JQ_FILTER='.items'
else
  JQ_FILTER='.items | map(select(.private == false))'
fi

# Fetch repos from user and org, then combine and process
BASE_JSON="$({
  # Fetch user repos
  gh api "search/repositories?q=user:nshkrdotcom+language:elixir&sort=stars&order=desc&per_page=100" --jq "$JQ_FILTER"

  # Fetch org repos
  gh api "search/repositories?q=org:North-Shore-AI+language:elixir&sort=stars&order=desc&per_page=100" --jq "$JQ_FILTER"
} | jq -s 'add')"

# Force-include any extra repositories that might be missing from the search results
EXTRA_JSON="[]"
for repo in "${EXTRA_REPOS[@]}"; do
  if [ -n "$repo" ]; then
    REPO_DATA="$(gh api "repos/$repo" 2>/dev/null || true)"
    if [ -n "$REPO_DATA" ]; then
      EXTRA_JSON="$(jq -s '.[0] + [.[1]]' \
        <(printf '%s\n' "$EXTRA_JSON") \
        <(printf '%s\n' "$REPO_DATA"))"
    else
      echo "Warning: could not fetch metadata for $repo" >&2
    fi
  fi
done

BASE_FILE="$(mktemp)"
EXTRA_FILE="$(mktemp)"
printf '%s\n' "$BASE_JSON" > "$BASE_FILE"
printf '%s\n' "$EXTRA_JSON" > "$EXTRA_FILE"

jq -s '
  (.[0] + .[1]) | map({
  "link": .html_url,
  "title": .name,
  "stars": .stargazers_count,
  "description": (.description // "Elixir repository"),
  "private": .private,
  "fork": .fork,
  "archived": .archived,
  "license": (.license.name // null),
  "topics": .topics,
  "updated_at": .updated_at,
  "pushed_at": .pushed_at,
  "created_at": .created_at,
  "default_branch": .default_branch,
  "open_issues_count": .open_issues_count,
  "watchers_count": .watchers_count,
  "forks_count": .forks_count,
  "language": .language,
  "size": .size,
  "owner_type": (if .owner.type == "Organization" then "org" else "user" end),
  "owner_login": .owner.login
}) | unique_by(.link) | sort_by(.stars) | reverse' "$BASE_FILE" "$EXTRA_FILE" > "$OUTPUT_FILE"

rm -f "$BASE_FILE" "$EXTRA_FILE"

echo "Elixir projects saved to: $OUTPUT_FILE"
