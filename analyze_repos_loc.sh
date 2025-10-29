#!/bin/bash

# Script to analyze LOC changes across all repos in the past 30 days
# Date range: 2025-09-27 to 2025-10-27

START_DATE="2025-09-27"
END_DATE="2025-10-27"
OUTPUT_FILE="repo_analysis_$(date +%Y%m%d_%H%M%S).txt"

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Initialize totals
TOTAL_REPOS=0
TOTAL_COMMITS=0
TOTAL_ADDED=0
TOTAL_REMOVED=0
TOTAL_CHANGED=0

echo "========================================" | tee "$OUTPUT_FILE"
echo "Repository Analysis: $START_DATE to $END_DATE" | tee -a "$OUTPUT_FILE"
echo "========================================" | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"

# Function to analyze a single repo
analyze_repo() {
    local owner=$1
    local repo=$2
    local repo_path="$HOME/p/g/${owner:0:1}/$repo"

    echo -e "${BLUE}Analyzing: $owner/$repo${NC}"
    echo "Repository: $owner/$repo" >> "$OUTPUT_FILE"
    echo "Path: $repo_path" >> "$OUTPUT_FILE"

    # Check if repo exists locally
    if [ ! -d "$repo_path" ]; then
        echo -e "${RED}  ⚠ Not found locally, skipping${NC}"
        echo "  Status: NOT FOUND LOCALLY" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        return
    fi

    # Change to repo directory
    cd "$repo_path" || return

    # Check if it's a git repo
    if [ ! -d ".git" ]; then
        echo -e "${RED}  ⚠ Not a git repository, skipping${NC}"
        echo "  Status: NOT A GIT REPO" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        return
    fi

    # Get commit count
    commits=$(git log --since="$START_DATE" --until="$END_DATE" --all --oneline --no-merges 2>/dev/null | wc -l)

    if [ "$commits" -eq 0 ]; then
        echo "  No commits in date range" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        return
    fi

    # Get LOC statistics
    stats=$(git log --since="$START_DATE" --until="$END_DATE" --all --pretty=format: --numstat 2>/dev/null | \
            awk '{added+=$1; removed+=$2} END {print added" "removed" "added+removed}')

    read added removed changed <<< "$stats"

    # Handle empty values
    added=${added:-0}
    removed=${removed:-0}
    changed=${changed:-0}

    # Update totals
    TOTAL_REPOS=$((TOTAL_REPOS + 1))
    TOTAL_COMMITS=$((TOTAL_COMMITS + commits))
    TOTAL_ADDED=$((TOTAL_ADDED + added))
    TOTAL_REMOVED=$((TOTAL_REMOVED + removed))
    TOTAL_CHANGED=$((TOTAL_CHANGED + changed))

    # Output results
    echo -e "${GREEN}  ✓ Commits: $commits${NC}"
    echo -e "${GREEN}  ✓ Lines added: $added${NC}"
    echo -e "${GREEN}  ✓ Lines removed: $removed${NC}"
    echo -e "${GREEN}  ✓ Total changes: $changed${NC}"

    echo "  Commits: $commits" >> "$OUTPUT_FILE"
    echo "  Lines added: $added" >> "$OUTPUT_FILE"
    echo "  Lines removed: $removed" >> "$OUTPUT_FILE"
    echo "  Total changes: $changed" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
}

# Analyze nshkrdotcom repos
echo -e "\n${BLUE}=== Analyzing nshkrdotcom repositories ===${NC}\n"
echo "=== nshkrdotcom repositories ===" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

nshkrdotcom_repos=(
    "nr_doc" "nordic-road" "nshkrdotcom.github.io" "nshkrdotcom" "json_remedy"
    "dotfiles_private" "snakepit" "sinter" "claude_agent_sdk" "snakebridge"
    "nr_ex" "code_agent" "pipeline_ex" "DSPex" "supertester" "skill_ex"
    "nr_doc_exec" "synapse" "NordicRoad" "workstation-bootstrap" "dotfiles"
    "WSL_ex" "tools" "foundation" "gemini_ex" "perforated_hackathon"
    "PerforatedAI" "ex_dbg" "neo4j_ex" "weaviate_ex" "boltx" "tiger_graph"
    "codex_sdk" "netcdf_ex" "pgprompt" "elixir_dashboard" "elixir_tracer"
    "codex_dspy" "duckdb_ex" "awesome-elixir" "superpowers" "jules_ex"
    "claude_agent_sdk_new" "youtube_audio_dl" "private_docs" "ALTAR"
    "Spectra" "Awesome-DSPy" "HectorRuiz" "superlearner" "handoff"
    "perimeter" "exdantic" "elixir_ecosystem" "research_papers" "arsenal"
    "research" "pump_fun_web" "ex_solana" "pump_fun_ex" "nordic_road" "funny"
)

for repo in "${nshkrdotcom_repos[@]}"; do
    analyze_repo "nshkrdotcom" "$repo"
done

# Analyze North-Shore-AI repos
echo -e "\n${BLUE}=== Analyzing North-Shore-AI repositories ===${NC}\n"
echo "=== North-Shore-AI repositories ===" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

northshore_repos=(
    "crucible_xai" "LlmGuard" "ExFairness" "ExDataCheck" "crucible_adversary"
    "crucible_framework" "crucible_examples" "crucible_trace" "crucible_telemetry"
    "crucible_hedging" "crucible_harness" "crucible_ensemble" "crucible_datasets"
    "crucible_bench"
)

for repo in "${northshore_repos[@]}"; do
    analyze_repo "North-Shore-AI" "$repo"
done

# Print summary
echo "" | tee -a "$OUTPUT_FILE"
echo "========================================" | tee -a "$OUTPUT_FILE"
echo "SUMMARY" | tee -a "$OUTPUT_FILE"
echo "========================================" | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"
echo "Total repositories analyzed: $TOTAL_REPOS" | tee -a "$OUTPUT_FILE"
echo "Total commits: $TOTAL_COMMITS" | tee -a "$OUTPUT_FILE"
echo "Total lines added: $TOTAL_ADDED" | tee -a "$OUTPUT_FILE"
echo "Total lines removed: $TOTAL_REMOVED" | tee -a "$OUTPUT_FILE"
echo "Net lines changed: $TOTAL_CHANGED" | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"
echo "Average commits per repo: $((TOTAL_COMMITS / (TOTAL_REPOS > 0 ? TOTAL_REPOS : 1)))" | tee -a "$OUTPUT_FILE"
echo "Average lines per commit: $((TOTAL_CHANGED / (TOTAL_COMMITS > 0 ? TOTAL_COMMITS : 1)))" | tee -a "$OUTPUT_FILE"
echo "" | tee -a "$OUTPUT_FILE"
echo "Results saved to: $OUTPUT_FILE" | tee -a "$OUTPUT_FILE"

echo -e "\n${GREEN}Analysis complete!${NC}"
