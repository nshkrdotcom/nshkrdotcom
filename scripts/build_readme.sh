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

TOTAL=$(echo "$REPOS" | jq 'length')
STARS=$(echo "$REPOS" | jq '[.[].stars] | add // 0')

cat > README.md << EOF
# nshkrdotcom

Building AI infrastructure on Elixir/BEAM. Research focus on LLM reliability, distributed systems, and functional programming.

**$TOTAL public repos** · **$STARS stars** · [@North-Shore-AI](https://github.com/North-Shore-AI)

---

## Crucible Framework

Open research platform for LLM reliability. Ensemble voting, request hedging, statistical testing.

[crucible_framework](https://github.com/North-Shore-AI/crucible_framework) · [crucible_bench](https://github.com/North-Shore-AI/crucible_bench) · [crucible_ensemble](https://github.com/North-Shore-AI/crucible_ensemble) · [crucible_hedging](https://github.com/North-Shore-AI/crucible_hedging) · [crucible_trace](https://github.com/North-Shore-AI/crucible_trace)

---

## Projects

EOF

for cat in "Ingot" "AI Agents" "AI SDKs" "AI Infra" "Schema" "DevTools" "OTP" "Testing" "Observability" "Data" "Security" "Research" "Utilities" "Other"; do
  ITEMS=$(echo "$REPOS" | jq -r --arg c "$cat" '[.[] | select(.cat == $c)] | sort_by(-.stars) | .[] | "- [\(.name)](\(.url)) · \(.stars)★ · \(.desc | if length > 60 then .[0:57] + "..." else . end)"')
  if [ -n "$ITEMS" ]; then
    echo "**$cat**" >> README.md
    echo "" >> README.md
    echo "$ITEMS" >> README.md
    echo "" >> README.md
  fi
done

echo "---" >> README.md
echo "" >> README.md
echo "_Updated $(date -u +%Y-%m-%d)_" >> README.md

echo "Done: $TOTAL repos, $STARS stars"
