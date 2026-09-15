# Design Review Automation

Automated design review, typography fixing, layout adjustment, and polish passes for all repositories

## design-review-automation

🎨 **Comprehensive design review, typography fixing, layout adjustment, and polish passes for all Aura Ecosystem repositories.**

## Overview

This repository provides automated tools for conducting thorough design and code quality reviews across all repositories using four specialized commands:

### `/critique` - Design Review
Performs comprehensive static analysis of:
- Architecture and directory structure
- Code organization and design patterns
- Codebase complexity metrics
- Best practices compliance
- Component-based architecture detection

**Output:** `critique-report.md`

### `/typeset` - Typography & Formatting
Analyzes and standardizes:
- Markdown file formatting
- Code style consistency
- Indentation patterns (spaces vs tabs)
- Line length optimization
- Quote style consistency
- Whitespace issues

**Output:** `typeset-report.md`

### `/layout` - Layout & Spacing
Evaluates and optimizes:
- CSS/SCSS/Tailwind configuration
- Component spacing consistency
- Margin and padding patterns
- Layout systems (Grid, Flexbox)
- Responsive design and breakpoints
- Mobile-first approach compliance

**Output:** `layout-report.md`

### `/polish` - Final Polish Pass
Comprehensive pre-release quality checks:
- Code quality and dead code detection
- Testing status and coverage
- Documentation completeness
- Configuration file validation
- Security vulnerability scanning
- Dependencies analysis
- Pre-release checklist

**Output:** `polish-report.md`

## Usage

### Local Usage

```bash
# Review a single repository
bash scripts/critique.sh /path/to/repo
bash scripts/typeset.sh /path/to/repo
bash scripts/layout.sh /path/to/repo
bash scripts/polish.sh /path/to/repo

# Review current directory
bash scripts/critique.sh
bash scripts/typeset.sh
bash scripts/layout.sh
bash scripts/polish.sh
```

### Batch Review

```bash
# Run batch review across multiple repositories
bash batch-review.sh
```

### GitHub Actions (Automated)

The workflow runs automatically every Sunday at 2 AM UTC or on-demand:

1. Navigate to **Actions** tab in GitHub
2. Select **Automated Design Review** workflow
3. Click **Run workflow**

Reviews are generated for all configured repositories and stored as artifacts.

## Adding Repositories to Review

### For GitHub Actions

Edit `.github/workflows/auto-review.yml` and add to the matrix:

```yaml
strategy:
  matrix:
    include:
      - repo: 'your-repo-name'
```

### For Batch Script

Edit `batch-review.sh` and add to the `REPOS` array:

```bash
REPOS=(
  "auraecosystem/your-repo-name"
)
```

## Reports Directory Structure

```
results/
├── repository-name/
│   ├── critique-report.md
│   ├── typeset-report.md
│   ├── layout-report.md
│   └── polish-report.md
└── ...
```

## Key Metrics Tracked

### Architecture
- Directory structure organization
- File count by type
- Design patterns detected
- Complexity hotspots

### Code Quality
- Trailing whitespace
- Indentation consistency
- Line length compliance
- Quote style uniformity
- Console statements
- Unused imports/variables

### Layout
- CSS Grid usage
- Flexbox patterns
- Utility-first CSS (Tailwind)
- Media query count
- Responsive breakpoints

### Documentation
- README.md presence and completeness
- CHANGELOG.md
- CONTRIBUTING.md
- LICENSE file
- .gitignore configuration

### Testing & Quality
- Test directory structure
- Test file count
- CI/CD configuration
- Dependencies analysis
- Security vulnerability checks

## Recommendations

After reviewing reports, consider:

1. **Code Formatting**
   - Install Prettier for JavaScript/TypeScript
   - Configure ESLint for linting
   - Use Black for Python code

2. **Spacing Scale**
   - Implement consistent spacing (4px, 8px, 12px, 16px, 24px, 32px, 48px, 64px)
   - Use 8-point or 12-column grid system
   - Follow mobile-first design approach

3. **Documentation**
   - Keep README.md up-to-date
   - Document all public APIs
   - Add contribution guidelines
   - Maintain changelog

4. **Testing**
   - Add unit tests for core functionality
   - Implement integration tests
   - Set up e2e tests for user workflows
   - Aim for >80% code coverage

5. **CI/CD**
   - Automate testing on every PR
   - Add linting checks
   - Implement security scanning
   - Set up automated deployments

## Integration with Existing Workflows

These scripts can be integrated into your CI/CD pipeline:

```yaml
# Example GitHub Actions step
- name: Run Design Reviews
  run: |
    bash scripts/critique.sh
    bash scripts/typeset.sh
    bash scripts/layout.sh
    bash scripts/polish.sh
```

## Customization

Each script can be customized:

- Modify file patterns to analyze
- Add/remove specific checks
- Adjust output format
- Integrate additional linters
- Extend checklist items

## Performance Considerations

- Large repositories may take several minutes
- Consider running on schedule or in parallel
- Filter to specific file types for faster results
- Use `.gitignore` to exclude unnecessary directories

## Contributing

To improve these tools:

1. Fork this repository
2. Create a feature branch
3. Make improvements
4. Submit a pull request

## Support

For issues or suggestions:
- Create an issue in this repository
- Check existing reports for patterns
- Review generated markdown files

## License

MIT - See LICENSE file

---

**Last Updated:** September 2026

**Repositories Under Review:** 100+

**Next Review:** Every Sunday 2 AM UTC
