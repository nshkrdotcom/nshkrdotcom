#!/bin/bash

# Update README.md with latest star counts from elixir_projects.json
# This script reads the JSON file and replaces placeholders in README.template.md

set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

JSON_FILE="${SCRIPT_DIR}/elixir_projects.json"
TEMPLATE_FILE="${PROJECT_ROOT}/README.template.md"
OUTPUT_FILE="${PROJECT_ROOT}/README.md"

# Check if required files exist
if [ ! -f "$JSON_FILE" ]; then
    echo "Error: JSON file not found at $JSON_FILE"
    echo "Run ./get_elixir_projects.sh first to generate the JSON file"
    exit 1
fi

if [ ! -f "$TEMPLATE_FILE" ]; then
    echo "Error: Template file not found at $TEMPLATE_FILE"
    exit 1
fi

# Check if jq is installed
if ! command -v jq &> /dev/null; then
    echo "Error: jq is not installed. Please install it first."
    echo "  Ubuntu/Debian: sudo apt-get install jq"
    echo "  macOS: brew install jq"
    exit 1
fi

echo "Updating README with latest star counts..."

# Copy template to output
cp "$TEMPLATE_FILE" "$OUTPUT_FILE"

# Create a temporary file for processing
TMP_FILE=$(mktemp)
cp "$OUTPUT_FILE" "$TMP_FILE"

# Process each repository in the JSON
# Extract unique repo names (titles) and their star counts
jq -r '.[] | "\(.title):\(.stars)"' "$JSON_FILE" | while IFS=: read -r repo_name stars; do
    # Escape special characters in repo name for sed
    escaped_repo_name=$(echo "$repo_name" | sed 's/[]\/$*.^[]/\\&/g')

    # Replace placeholders in format {{STARS:repo_name}}
    sed -i "s/{{STARS:${escaped_repo_name}}}/${stars}/g" "$TMP_FILE"
done

# Update the date placeholder
current_date=$(date +%Y-%m-%d)
sed -i "s/{{UPDATE_DATE}}/${current_date}/g" "$TMP_FILE"

# Move the temporary file to the output file
mv "$TMP_FILE" "$OUTPUT_FILE"

echo "✓ README.md updated successfully!"
echo "  - Template: $TEMPLATE_FILE"
echo "  - JSON data: $JSON_FILE"
echo "  - Output: $OUTPUT_FILE"
echo ""

# Show how many placeholders remain (for debugging)
remaining=$(grep -c '{{STARS:' "$OUTPUT_FILE" || true)
if [ "$remaining" -gt 0 ]; then
    echo "⚠ Warning: $remaining placeholder(s) still remain in README.md"
    echo "   This might indicate missing repos in the JSON file."
    echo "   Remaining placeholders:"
    grep -o '{{STARS:[^}]*}}' "$OUTPUT_FILE" | sort | uniq
else
    echo "✓ All star placeholders have been replaced!"
fi
