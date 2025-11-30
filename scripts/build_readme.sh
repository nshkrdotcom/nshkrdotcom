#!/bin/bash
# build_readme.sh - Fetches all repos and generates README.md
# Single script, no dependencies beyond gh and jq

set -e
cd "$(dirname "$0")/.."

echo "Building README.md..."

# Fetch all repos
echo "  Fetching repos..."
REPOS=$(mktemp)
gh api --paginate "users/nshkrdotcom/repos?per_page=100&type=owner" > "$REPOS.user"
gh api --paginate "orgs/North-Shore-AI/repos?per_page=100" > "$REPOS.org" 2>/dev/null || echo "[]" > "$REPOS.org"
jq -s 'add' "$REPOS.user" "$REPOS.org" > "$REPOS"
rm "$REPOS.user" "$REPOS.org"

# Process and categorize
echo "  Processing..."
DATA=$(jq '
def category:
  .topics as $t |
  if ($t | index("nshkr-archive")) then null
  elif ($t | index("nshkr-crucible")) then "Crucible Framework"
  elif ($t | index("nshkr-ai-agents")) then "AI Agents"
  elif ($t | index("nshkr-ai-sdk")) then "AI SDKs"
  elif ($t | index("nshkr-ai-infra")) then "AI Infrastructure"
  elif ($t | index("nshkr-schema")) then "Schema & Validation"
  elif ($t | index("nshkr-devtools")) then "Developer Tools"
  elif ($t | index("nshkr-otp")) then "OTP & Distributed"
  elif ($t | index("nshkr-testing")) then "Testing"
  elif ($t | index("nshkr-observability")) then "Observability"
  elif ($t | index("nshkr-data")) then "Data & Databases"
  elif ($t | index("nshkr-security")) then "Security"
  elif ($t | index("nshkr-research")) then "Research"
  elif ($t | index("nshkr-utility")) then "Utilities"
  else "Other"
  end;

map(select(.archived == false and .fork == false))
| map(select(category != null))
| map({
    name: .name,
    url: .html_url,
    desc: (.description // "" | if length > 80 then .[0:77] + "..." else . end),
    stars: .stargazers_count,
    cat: category,
    owner: .owner.login
  })
| group_by(.name) | map(sort_by(.stars) | reverse | .[0])
| sort_by(.stars) | reverse
' "$REPOS")

rm "$REPOS"

# Stats
TOTAL=$(echo "$DATA" | jq 'length')
STARS=$(echo "$DATA" | jq '[.[].stars] | add')

# Generate README
echo "  Generating README.md..."
cat > README.md << 'HEADER'
# nshkrdotcom

**AI reliability research & distributed systems on Elixir/BEAM**

[![GitHub followers](https://img.shields.io/github/followers/nshkrdotcom?style=flat)](https://github.com/nshkrdotcom)
HEADER

echo "" >> README.md
echo "**${TOTAL} repositories** | **${STARS} stars**" >> README.md
echo "" >> README.md

cat >> README.md << 'INTRO'
---

## Crucible Framework

Research platform for LLM reliability on Elixir/OTP. Building towards 99%+ reliability through ensemble voting, request hedging, and statistical testing.

**[@North-Shore-AI](https://github.com/North-Shore-AI)** — [crucible_framework](https://github.com/North-Shore-AI/crucible_framework) | [crucible_bench](https://github.com/North-Shore-AI/crucible_bench) | [crucible_ensemble](https://github.com/North-Shore-AI/crucible_ensemble) | [crucible_hedging](https://github.com/North-Shore-AI/crucible_hedging)

---

## Projects

INTRO

# Categories in display order
CATEGORIES='["AI Agents","AI SDKs","AI Infrastructure","Schema & Validation","Developer Tools","OTP & Distributed","Testing","Observability","Data & Databases","Security","Research","Utilities","Other"]'

echo "$CATEGORIES" | jq -r '.[]' | while read -r cat; do
  repos=$(echo "$DATA" | jq -r --arg c "$cat" '[.[] | select(.cat == $c)] | sort_by(.stars) | reverse')
  count=$(echo "$repos" | jq 'length')

  if [ "$count" -gt 0 ]; then
    echo "### $cat" >> README.md
    echo "" >> README.md
    echo "$repos" | jq -r '.[] | "| [\(.name)](\(.url)) | \(.stars) | \(.desc) |"' | while read -r line; do
      echo "$line" >> README.md
    done
    echo "" >> README.md
  fi
done

cat >> README.md << 'FOOTER'
---

<sub>Auto-updated every 12 hours</sub>
FOOTER

echo "Done! $(cat README.md | wc -l) lines"
