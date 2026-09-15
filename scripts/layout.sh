#!/bin/bash
# /layout - Layout & Spacing Adjustment
# Analyzes and optimizes spacing, alignment, margins, and component layout

set -e

REPO_PATH="${1:-.}"
OUTPUT_FILE="layout-report.md"

echo "📐 Running Layout & Spacing Adjustment (/layout) on: $REPO_PATH"
echo ""

# Initialize report
cat > "$OUTPUT_FILE" << 'EOF'
# Layout & Spacing Report

## Overview
Analysis of layout structure, spacing consistency, margins, padding, and component alignment.

---

EOF

# 1. CSS/Styling Files
echo "## Styling Files Analysis" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "### CSS/SCSS/Tailwind Files Found" >> "$OUTPUT_FILE"
echo '```bash' >> "$OUTPUT_FILE"
find "$REPO_PATH" -type f \( -name '*.css' -o -name '*.scss' -o -name '*.sass' -o -name 'tailwind.config.*' \) -not -path '*/node_modules/*' -not -path '*/\.*' >> "$OUTPUT_FILE"
echo '```' >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 2. Component Structure
echo "## Component Layout Structure" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "### React/Vue Components" >> "$OUTPUT_FILE"
echo '```bash' >> "$OUTPUT_FILE"
find "$REPO_PATH" -type f \( -name '*.jsx' -o -name '*.tsx' -o -name '*.vue' \) -not -path '*/node_modules/*' | head -20 >> "$OUTPUT_FILE"
echo '```' >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 3. Spacing Analysis
echo "## Spacing Consistency" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "### Margin/Padding Patterns" >> "$OUTPUT_FILE"
echo '```bash' >> "$OUTPUT_FILE"
grep -rE '(margin|padding):\s*[0-9]+(px|rem|em|%);' "$REPO_PATH" --include='*.css' --include='*.scss' 2>/dev/null | head -20 || echo "No inline spacing found (good practice)"
echo '```' >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 4. Layout Systems
echo "## Layout Systems Detected" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

if grep -rq 'display:\s*grid' "$REPO_PATH" --include='*.css' --include='*.scss' 2>/dev/null; then
  echo "✅ **CSS Grid** in use" >> "$OUTPUT_FILE"
fi

if grep -rq 'display:\s*flex' "$REPO_PATH" --include='*.css' --include='*.scss' 2>/dev/null; then
  echo "✅ **Flexbox** in use" >> "$OUTPUT_FILE"
fi

if grep -rq 'class=".*flex.*"' "$REPO_PATH" --include='*.jsx' --include='*.tsx' --include='*.vue' 2>/dev/null; then
  echo "✅ **Utility-first CSS** (Tailwind) in use" >> "$OUTPUT_FILE"
fi

echo "" >> "$OUTPUT_FILE"

# 5. Responsive Design
echo "## Responsive Design Analysis" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "### Media Queries" >> "$OUTPUT_FILE"
echo '```bash' >> "$OUTPUT_FILE"
grep -rc '@media' "$REPO_PATH" --include='*.css' --include='*.scss' | awk -F: '{sum+=$2} END {print "Total media queries: " sum}'
echo '```' >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 6. Breakpoints
echo "### Breakpoint Configuration" >> "$OUTPUT_FILE"
echo '```bash' >> "$OUTPUT_FILE"
grep -rE '(mobile|tablet|desktop|sm|md|lg|xl|2xl)' "$REPO_PATH" --include='*.config.js' --include='tailwind.config.*' 2>/dev/null | head -10 || echo "Check tailwind.config.js or theme configuration"
echo '```' >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# 7. Layout Recommendations
echo "## Recommendations" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "### Spacing Scale" >> "$OUTPUT_FILE"
echo "Implement consistent spacing scale (e.g., 4px, 8px, 12px, 16px, 24px, 32px, 48px, 64px)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "### Grid System" >> "$OUTPUT_FILE"
echo "Use a consistent grid system (12-column or 8-point grid)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "### Mobile-First Approach" >> "$OUTPUT_FILE"
echo "Design mobile layouts first, then enhance for larger screens" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "### Component Alignment" >> "$OUTPUT_FILE"
echo "Ensure consistent alignment and spacing between components" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "---" >> "$OUTPUT_FILE"
echo "Report generated on: $(date)" >> "$OUTPUT_FILE"

echo "✅ Layout & spacing review complete. Report saved to: $OUTPUT_FILE"
cat "$OUTPUT_FILE"
