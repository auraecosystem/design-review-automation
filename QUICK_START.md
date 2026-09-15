# Quick Start Guide

## Installation

1. Clone this repository:
```bash
git clone https://github.com/auraecosystem/design-review-automation.git
cd design-review-automation
```

2. Make scripts executable:
```bash
chmod +x scripts/*.sh
chmod +x batch-review.sh
```

## Running Your First Review

### Option 1: Review a Local Repository

```bash
# Navigate to your repository
cd /path/to/your/repo

# Run individual reviews
bash /path/to/design-review-automation/scripts/critique.sh
bash /path/to/design-review-automation/scripts/typeset.sh
bash /path/to/design-review-automation/scripts/layout.sh
bash /path/to/design-review-automation/scripts/polish.sh
```

### Option 2: Review in Place

```bash
# From the design-review-automation directory
bash scripts/critique.sh
bash scripts/typeset.sh
bash scripts/layout.sh
bash scripts/polish.sh
```

## Reading Reports

Each command generates a markdown report:

- **critique-report.md** - Architecture and design analysis
- **typeset-report.md** - Formatting and typography issues
- **layout-report.md** - Spacing and layout recommendations
- **polish-report.md** - Final quality checklist

Open these files in any markdown viewer or text editor.

## Common Issues

### "Permission denied" error
```bash
# Make all scripts executable
chmod +x scripts/*.sh
chmod +x batch-review.sh
```

### Script not found
```bash
# Ensure you're in the correct directory
cd design-review-automation
ls scripts/  # Should list critique.sh, typeset.sh, etc.
```

### No output generated
```bash
# Check if the path exists
ls -la /path/to/repo

# Try with absolute path
bash scripts/critique.sh /absolute/path/to/repo
```

## Next Steps

1. **Review the Reports** - Read through each generated markdown file
2. **Identify Patterns** - Look for common issues across reports
3. **Create Action Items** - Convert recommendations into GitHub issues
4. **Automate** - Set up GitHub Actions for continuous reviews
5. **Track Progress** - Compare reports over time

## Automation Setup

### GitHub Actions

The workflow is already configured in `.github/workflows/auto-review.yml`

1. Go to Settings → Actions → Runners
2. Add your repositories to the matrix
3. Save and the workflow will run automatically

### Manual Batch Review

```bash
bash batch-review.sh

# Results will be in results/ directory
ls results/
```

## Tips & Tricks

- **Focus on one report at a time** - Don't try to fix everything at once
- **Start with /polish** - It gives a quick quality snapshot
- **Use /critique for architecture** - Best for understanding structure
- **Batch reviews** - Run all repos to spot trends
- **Schedule regularly** - Weekly reviews catch drift early

## Support

For help:
- Check the main README.md
- Review example reports
- Open an issue on GitHub

Happy reviewing! 🎨
