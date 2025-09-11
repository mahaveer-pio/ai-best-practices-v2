# AI File Restriction System

<!-- [AI-Generated-Copilot] - Documentation for AI file restriction system -->

This document explains the AI file restriction system that prevents AI tools from modifying sensitive or critical files without explicit approval.

## What is AI File Restriction?

The AI file restriction system is a safety mechanism that:

- **Monitors** files modified by AI tools
- **Identifies** when AI touches files marked as restricted
- **Prompts** users for explicit approval before allowing such modifications
- **Logs** all override decisions for audit purposes
- **Protects** critical infrastructure and security-sensitive files

## How It Works

### 1. Detection Process

The system works through the pre-commit Git hook:

```bash
# 1. Scan staged files for AI-generated comments
ai_files=$(git diff --cached --name-only | xargs grep -l "\[AI-Generated-[A-Za-z]*\]")

# 2. Check if any AI-modified files match restricted patterns
for file in $ai_files; do
  if check_if_restricted "$file"; then
    # File is restricted - trigger warning
  fi
done

# 3. Present user with options if violations found
```

### 2. AI Comment Detection

The system detects these AI-generated comment patterns:

```bash
# Code files
// [AI-Generated-Copilot] - Function description
# [AI-Generated-Claude] - Script description
/* [AI-Generated-ChatGPT] - Block comment */
<!-- [AI-Generated-Gemini] - HTML comment -->
-- [AI-Generated-Other] - SQL comment
```

### 3. Pattern Matching

Restricted files are defined using glob patterns in `.ai-restricted-files`:

```bash
# Exact file match
ai-restricted-file.txt

# Directory patterns
**/security/**
**/auth/**

# File extension patterns
**/.env*
**/secrets/**

# Specific filenames anywhere
**/package.json
**/Dockerfile
```

## Configuration

### Setting Up Restricted Files

Create a `.ai-restricted-files` file in your project root:

```bash
# AI-Restricted Files Configuration
# Files and patterns that should not be modified by AI tools
# One pattern per line, supports glob patterns

# Security-sensitive files
**/security/**
**/auth/**
**/.env*
**/secrets/**

# Critical configuration files
**/package.json
**/tsconfig.json
**/next.config.mjs

# Production deployment files
**/Dockerfile
**/docker-compose*.yml
**/.github/workflows/**

# Database files
**/migrations/**
**/schema.sql

# Custom restrictions
**/payment-processor.ts
**/user-management/**
critical-config.json
```

### Pattern Syntax

| Pattern           | Matches                | Example                   |
| ----------------- | ---------------------- | ------------------------- |
| `filename.txt`    | Exact filename         | `config.txt`              |
| `**/dir/**`       | Any file in directory  | `src/auth/login.ts`       |
| `**/*.env*`       | Files with extension   | `.env.local`, `.env.prod` |
| `**/package.json` | Specific file anywhere | `frontend/package.json`   |

### Adding New Restrictions

1. **Edit** `.ai-restricted-files`
2. **Add** one pattern per line
3. **Use** glob patterns for flexibility
4. **Test** with a sample AI modification

Example addition:

```bash
# Add to .ai-restricted-files
**/critical-component.tsx
payment-gateway/**
secrets.json
```

## User Interaction

### Restriction Violation Warning

When AI touches a restricted file, users see:

```bash
⚠️  🚨 AI RESTRICTION VIOLATION DETECTED 🚨

🤖 AI tools have modified the following RESTRICTED files:
  ❌ src/auth/login.ts
  ❌ config/database.json

These files are marked as AI-restricted in .ai-restricted-files
Allowing AI to modify these files may pose security or stability risks.

What would you like to do?
  [c] Continue with commit (I take responsibility)
  [a] Abort commit and review changes
  [r] Remove AI comments and continue

Choose [c/a/r]:
```

### User Options

**[c] Continue**

- Proceeds with the commit
- Logs the override decision
- User takes responsibility for AI changes

**[a] Abort**

- Stops the commit process
- Allows manual review of changes
- Recommended for safety

**[r] Remove** _(future feature)_

- Automatically removes AI comments
- Continues with commit
- Not yet implemented

### Non-Interactive Behavior

In automated environments (CI/CD):

- Automatically chooses **Abort**
- Prevents unsafe AI modifications
- Ensures human review is required

## Why Use AI File Restrictions?

### Security Benefits

- **Prevents** AI from modifying authentication code
- **Protects** environment variables and secrets
- **Safeguards** payment processing logic
- **Maintains** security configuration integrity

### Compliance Benefits

- **Audit trail** of all AI interactions with sensitive files
- **Explicit approval** for security-critical changes
- **Documentation** of who authorized AI modifications
- **Risk management** for regulated environments

### Development Benefits

- **Catches** unintended AI modifications early
- **Enforces** manual review of critical changes
- **Maintains** code quality in sensitive areas
- **Prevents** production issues from AI errors

## Audit and Logging

### Override Log

All restriction overrides are logged to `.ai-restriction-log`:

```
2024-09-10 14:30:25 - AI restriction override by john.doe
Files: src/auth/login.ts
Decision: User chose to continue despite AI restriction

2024-09-10 15:45:12 - AI restriction override by jane.smith
Files: config/database.json, .env.production
Decision: User chose to continue despite AI restriction
```

### AI Commit Log

AI-assisted commits are logged to `.ai-commit-log`:

```
# AI Commit Log - PIO Manager Pro
2024-09-10 14:32:10 | abc123 | [AI-ASSISTED] feat(auth): update login validation | GitHub Copilot | john.doe
```

### Monitoring Commands

```bash
# View recent restriction overrides
tail -10 .ai-restriction-log

# Count overrides by developer
grep -c "john.doe" .ai-restriction-log

# Find overrides for specific files
grep "auth/" .ai-restriction-log

# Check AI commits in date range
grep "2024-09" .ai-commit-log
```

## Best Practices

### File Selection

**Always Restrict:**

- Authentication and authorization code
- Environment variables and secrets
- Payment processing logic
- Database migration scripts
- Production configuration files
- CI/CD workflow definitions

**Consider Restricting:**

- Core business logic
- API endpoint definitions
- Security middleware
- User management components
- Data validation schemas

**Generally Safe:**

- UI components (with review)
- Utility functions
- Test files
- Documentation
- Styling and layout code

### Team Guidelines

1. **Review restrictions** regularly with the team
2. **Document** why files are restricted
3. **Train** developers on the override process
4. **Monitor** restriction logs for patterns
5. **Update** patterns as the codebase evolves

### Emergency Procedures

If you need to bypass restrictions temporarily:

```bash
# Temporarily disable (emergency only)
mv .ai-restricted-files .ai-restricted-files.backup

# Commit changes
git commit -m "emergency: critical fix"

# Re-enable restrictions
mv .ai-restricted-files.backup .ai-restricted-files
```

**⚠️ Warning:** Only use emergency bypass in critical situations and restore restrictions immediately.

## Troubleshooting

### Common Issues

**Pattern not matching:**

- Check for trailing spaces in `.ai-restricted-files`
- Verify glob pattern syntax
- Test pattern manually

**Restriction not triggering:**

- Ensure AI comments are present in modified files
- Check that `.ai-restricted-files` exists
- Verify file is actually staged for commit

**False positives:**

- Review pattern specificity
- Consider using more precise paths
- Add exclusion patterns if needed

### Debug Mode

To debug pattern matching, temporarily add debug output:

```bash
# In pre-commit hook, add:
echo "Testing file: $file against pattern: $pattern" >&2
```

### Manual Testing

Test restriction patterns manually:

```bash
# Check if file matches pattern
case "src/auth/login.ts" in
  **/auth/**) echo "MATCH" ;;
  *) echo "NO MATCH" ;;
esac
```

## Integration with Other Tools

### VS Code Integration

The restriction system works with:

- VS Code Git integration
- GitLens extension
- Built-in terminal commits

### CI/CD Integration

In automated environments:

- Automatically aborts on violations
- Requires human intervention
- Prevents deployment of unrestricted AI changes

### IDE Extensions

Compatible with:

- GitHub Copilot
- Claude AI extensions
- ChatGPT code assistants
- Any tool that adds AI comments

The AI file restriction system provides a robust safety net for AI-assisted development while maintaining flexibility for authorized use.
