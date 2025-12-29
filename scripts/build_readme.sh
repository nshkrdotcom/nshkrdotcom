#!/bin/bash
set -e
cd "$(dirname "$0")/.."

# Fetch PUBLIC repos only from both accounts
TMP=$(mktemp)
gh api --paginate "users/nshkrdotcom/repos?per_page=100&type=public" | jq '[.[] | select(.private == false)]' > "$TMP.1"
gh api --paginate "orgs/North-Shore-AI/repos?per_page=100&type=public" 2>/dev/null | jq '[.[] | select(.private == false)]' > "$TMP.2" || echo "[]" > "$TMP.2"

# Process: public, not archived, not fork, categorize by nshkr-* topics
REPOS=$(jq -s 'add | map(select(.archived == false and .fork == false and .private == false)) | map({
  name: .name,
  url: .html_url,
  desc: (.description // ""),
  stars: .stargazers_count,
  cat: (
    if (.topics | index("nshkr-archive")) then "SKIP"
    elif (.topics | index("nshkr-crucible")) then "Crucible"
    elif (.topics | index("nshkr-ingot")) then "Ingot"
    elif (.topics | index("nshkr-ai-agents")) then "AI Agents"
    elif (.topics | index("nshkr-ai-sdk")) then "AI SDKs"
    elif (.topics | index("nshkr-ai-infra")) then "AI Infra"
    elif (.topics | index("nshkr-schema")) then "Schema"
    elif (.topics | index("nshkr-devtools")) then "DevTools"
    elif (.topics | index("nshkr-otp")) then "OTP"
    elif (.topics | index("nshkr-testing")) then "Testing"
    elif (.topics | index("nshkr-observability")) then "Observability"
    elif (.topics | index("nshkr-data")) then "Data"
    elif (.topics | index("nshkr-security")) then "Security"
    elif (.topics | index("nshkr-research")) then "Research"
    elif (.topics | index("nshkr-utility")) then "Utilities"
    else "Other"
    end
  )
}) | map(select(.cat != "SKIP")) | group_by(.name) | map(max_by(.stars)) | sort_by(-.stars)' "$TMP.1" "$TMP.2")

rm -f "$TMP" "$TMP.1" "$TMP.2"

# Calculate stats
TOTAL=$(echo "$REPOS" | jq 'length')
STARS=$(echo "$REPOS" | jq '[.[].stars] | add // 0')

# Get individual repo stars for template placeholders
FLOWSTONE_STARS=$(echo "$REPOS" | jq -r '.[] | select(.name == "flowstone") | .stars // "-"')
FLOWSTONE_AI_STARS=$(echo "$REPOS" | jq -r '.[] | select(.name == "flowstone_ai") | .stars // "-"')
SYNAPSE_STARS=$(echo "$REPOS" | jq -r '.[] | select(.name == "synapse") | .stars // "-"')

# Generate auto-generated content by category
AUTO_CONTENT=""

# Categories to display (order matters)
CATEGORIES=("AI SDKs" "AI Infra" "AI Agents" "Schema" "DevTools" "OTP" "Testing" "Observability" "Data" "Security" "Research" "Utilities" "Other")

for cat in "${CATEGORIES[@]}"; do
  ITEMS=$(echo "$REPOS" | jq -r --arg c "$cat" '[.[] | select(.cat == $c)] | sort_by(-.stars) | .[] | "| [\(.name)](\(.url)) | \(.stars) | \(.desc | if length > 60 then .[0:57] + "..." else . end) |"')
  if [ -n "$ITEMS" ]; then
    AUTO_CONTENT+="## $cat"$'\n\n'
    AUTO_CONTENT+="| Project | Stars | Description |"$'\n'
    AUTO_CONTENT+="|---------|-------|-------------|"$'\n'
    AUTO_CONTENT+="$ITEMS"$'\n\n'
  fi
done

# Read template and substitute placeholders
TEMPLATE=$(cat templates/README.template.md)

# Substitute placeholders
OUTPUT="${TEMPLATE//\{\{REPO_COUNT\}\}/$TOTAL}"
OUTPUT="${OUTPUT//\{\{STAR_COUNT\}\}/$STARS}"
OUTPUT="${OUTPUT//\{\{flowstone_stars\}\}/$FLOWSTONE_STARS}"
OUTPUT="${OUTPUT//\{\{flowstone_ai_stars\}\}/$FLOWSTONE_AI_STARS}"
OUTPUT="${OUTPUT//\{\{synapse_stars\}\}/$SYNAPSE_STARS}"
OUTPUT="${OUTPUT//\{\{UPDATE_DATE\}\}/$(date -u +%Y-%m-%d)}"
OUTPUT="${OUTPUT//\{\{AUTO_GENERATED_CONTENT\}\}/$AUTO_CONTENT}"

echo "$OUTPUT" > README.md

echo "Done: $TOTAL repos, $STARS stars"
