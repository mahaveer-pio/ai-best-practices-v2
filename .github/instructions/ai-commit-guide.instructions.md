---
applyTo: '**'
---

# AI Commit Guide - KPI Manager Pro

This guide provides essential instructions for tracking and documenting AI-generated content contributions across ALL file types to ensure full traceability and compliance.

## 🤖 AI-Generated Content Comment Standards

### Universal Comment Format

When AI tools generate or significantly assist with content creation, add a comment directly above or at the beginning of the generated content:

**Code Files (TypeScript, JavaScript, Python, etc.):**

```typescript
// [AI-Generated-Copilot] - Function to calculate sum of two numbers
function addNumbers(a: number, b: number): number {
  return a + b;
}

// [AI-Generated-Claude] - React component for user profile display
export function UserProfile({ user }: UserProfileProps) {
  return (
    <div className="user-profile">
      <h2>{user.name}</h2>
      <p>{user.email}</p>
    </div>
  );
}
```

**Documentation Files (Markdown, Text):**

```markdown
<!-- [AI-Generated-ChatGPT] - API documentation section -->

## Authentication API

The Authentication API provides secure login and logout functionality...

<!-- [AI-Generated-Copilot] - Installation guide section -->

### Installation Steps

1. Clone the repository
2. Install dependencies with `npm install`
```

**Configuration Files (JSON, YAML, TOML):**

```json
{
  "_comment_ai": "[AI-Generated-Claude] - ESLint configuration for TypeScript",
  "extends": ["@typescript-eslint/recommended"],
  "rules": {
    "@typescript-eslint/no-unused-vars": "error"
  }
}
```

```yaml
# [AI-Generated-Copilot] - Docker Compose configuration
version: '3.8'
services:
  app:
    image: node:18
    ports:
      - '3000:3000'
```

**Shell Scripts (Bash, PowerShell):**

```bash
#!/bin/bash
# [AI-Generated-Gemini] - Automated deployment script

set -e
echo "Starting deployment process..."
```

```powershell
# [AI-Generated-Copilot] - Windows setup script
Write-Host "Configuring Windows environment..."
```

**SQL Files:**

```sql
-- [AI-Generated-Claude] - User table creation script
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

**CSS/SCSS Files:**

```css
/* [AI-Generated-Copilot] - Responsive grid layout */
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 1rem;
}
```

**HTML Files:**

```html
<!-- [AI-Generated-Claude] - Hero section template -->
<section class="hero">
  <h1>Welcome to KPI Manager Pro</h1>
  <p>Track and analyze your key performance indicators</p>
</section>
```

**Other Text-Based Files:**

- **Dockerfile**: `# [AI-Generated-Copilot] - Multi-stage build configuration`
- **Requirements.txt**: `# [AI-Generated-ChatGPT] - Python dependencies for ML pipeline`
- **Package.json**: Use `"_ai_generated"` field in comments
- **README files**: Use HTML or Markdown comment syntax

### Supported AI Tools

Use these exact identifiers in your comments:

- `[AI-Generated-Copilot]` - GitHub Copilot
- `[AI-Generated-Claude]` - Anthropic Claude
- `[AI-Generated-ChatGPT]` - OpenAI ChatGPT
- `[AI-Generated-Gemini]` - Google Gemini
- `[AI-Generated-Other]` - Any other AI tool

### When to Add AI Comments

**ALWAYS add AI comments when AI generates or significantly assists with:**

**Code & Logic:**

- ✅ Functions, methods, and classes
- ✅ Complex algorithms and business logic
- ✅ Database queries and schemas
- ✅ API endpoints and routing logic
- ✅ Test cases and testing utilities
- ✅ Type definitions and interfaces

**Documentation & Content:**

- ✅ README sections and installation guides
- ✅ API documentation and code examples
- ✅ Architecture diagrams and explanations
- ✅ User guides and tutorials
- ✅ Comments explaining complex logic
- ✅ Error messages and help text

**Configuration & Infrastructure:**

- ✅ Docker configurations and Dockerfiles
- ✅ CI/CD pipeline definitions
- ✅ Environment configuration files
- ✅ Build scripts and automation
- ✅ Database migration scripts
- ✅ Deployment configurations

**Scripts & Automation:**

- ✅ Build and deployment scripts
- ✅ Data processing and analysis scripts
- ✅ Setup and installation scripts
- ✅ Utility and helper scripts
- ✅ Monitoring and logging configurations

**UI & Styling:**

- ✅ CSS layouts and responsive designs
- ✅ HTML templates and components
- ✅ SVG icons and graphics
- ✅ Animation and transition definitions

**Optional for minor AI assistance:**

- 🤔 Simple variable renames suggested by AI
- 🤔 Basic import statement additions
- 🤔 Minor formatting and whitespace changes
- 🤔 Simple spelling and grammar corrections

### Comment Placement Rules

```typescript
// ✅ CORRECT - Comment directly above the AI-generated code
// [AI-Generated-Copilot] - User authentication hook
export function useAuth() {
  // implementation...
}

// ❌ INCORRECT - Comment inside the function
export function useAuth() {
  // [AI-Generated-Copilot] - User authentication hook
  // implementation...
}

// ✅ CORRECT - Multiple functions with individual comments
// [AI-Generated-Copilot] - Helper function for data formatting
function formatDate(date: Date): string {
  return date.toISOString().split('T')[0]
}

// [AI-Generated-Copilot] - Helper function for data parsing
function parseDate(dateString: string): Date {
  return new Date(dateString)
}
```

**For Documentation Files:**

```markdown
<!-- [AI-Generated-Claude] - Section about API authentication -->

## API Authentication

This section explains how to authenticate with the API...

<!-- [AI-Generated-Copilot] - Installation instructions -->

### Quick Start

Follow these steps to get started...
```

**For Configuration Files:**

```yaml
# [AI-Generated-Claude] - Kubernetes deployment configuration
apiVersion: apps/v1
kind: Deployment
metadata:
  name: kpi-manager
spec:
  replicas: 3
```

**For Scripts:**

```bash
#!/bin/bash
# [AI-Generated-Copilot] - Automated backup script for production database

set -e
backup_date=$(date +%Y%m%d_%H%M%S)
```

## 📝 AI Commit Message Standards

### Automatic Detection

When the git hook detects AI-generated comments in your staged files, it will automatically prompt for an AI-assisted commit message.

### AI Commit Message Format

```
[AI-ASSISTED] type(scope): brief description

Generated by: [AI Tool Name]
Reviewed by: [Your Name]
Scope: [Component/Feature]

Optional detailed description of changes...
```

### Examples

```
[AI-ASSISTED] feat(utils): add number calculation utilities

Generated by: GitHub Copilot
Reviewed by: John Doe
Scope: Math Utilities

Added helper functions for basic mathematical operations
including addition, subtraction, and validation logic.
```

```
[AI-ASSISTED] feat(auth): implement user authentication hook

Generated by: Claude
Reviewed by: Jane Smith
Scope: Authentication System

Created useAuth hook with login, logout, and session management.
Includes TypeScript interfaces and error handling.
```

## 🔍 Git Hook Detection

### How It Works

1. **Pre-commit scan**: Git hook automatically scans staged files for AI comments
2. **Detection**: If `[AI-Generated-*]` comments are found, triggers AI commit flow
3. **Message template**: Pre-populates commit message with AI-assisted template
4. **Validation**: Ensures all required fields are present before allowing commit

### AI Detection Logic

The git hook searches for these patterns in staged files:

```bash
# Regex patterns used for detection across all file types
grep -E "//\s*\[AI-Generated-[A-Za-z]+\]"        # JavaScript, TypeScript, C/C++, Java
grep -E "#\s*\[AI-Generated-[A-Za-z]+\]"         # Python, Shell, YAML, Ruby
grep -E "/\*\s*\[AI-Generated-[A-Za-z]+\]"       # Block comments (CSS, SQL)
grep -E "<!--\s*\[AI-Generated-[A-Za-z]+\]"      # HTML, XML, Markdown
grep -E "--\s*\[AI-Generated-[A-Za-z]+\]"        # SQL, Lua, Haskell
grep -E "%\s*\[AI-Generated-[A-Za-z]+\]"         # LaTeX, MATLAB
grep -E ";\s*\[AI-Generated-[A-Za-z]+\]"         # Assembly, Lisp
grep -E '"_ai_generated".*\[AI-Generated-[A-Za-z]+\]' # JSON files
```

## 🎯 Developer Workflow

### Step 1: Code with AI Assistance

```typescript
// [AI-Generated-Copilot] - Email validation utility
export function isValidEmail(email: string): boolean {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
  return emailRegex.test(email)
}
```

**Or for documentation:**

```markdown
<!-- [AI-Generated-Claude] - API usage examples -->

## Quick Start Guide

Here's how to get started with the KPI Manager Pro API...
```

**Or for configuration:**

```yaml
# [AI-Generated-Copilot] - Production deployment configuration
apiVersion: apps/v1
kind: Deployment
metadata:
  name: kpi-manager-prod
```

### Step 2: Stage Changes

```bash
git add src/utils/validation.ts
# or
git add docs/api-guide.md
# or
git add docker-compose.yml
# or any file type with AI-generated content
```

### Step 3: Commit (AI Detection Automatic)

```bash
git commit
# Git hook detects AI comments and prompts for AI-assisted commit message
# Template is pre-populated with detected AI tool
```

### Step 4: Review Generated Message

```
[AI-ASSISTED] feat(utils): add email validation utility

Generated by: GitHub Copilot
Reviewed by: [Your Name] # ← Fill in your name
Scope: Validation Utilities # ← Adjust scope if needed
```

## 🚨 Important Guidelines

### DO's

- ✅ **Always add AI comments** for substantial AI-generated code
- ✅ **Be specific** about which AI tool was used
- ✅ **Review and test** all AI-generated code before committing
- ✅ **Use descriptive scope** in commit messages
- ✅ **Keep AI comments concise** but informative

### DON'Ts

- ❌ **Don't commit** AI-generated code without proper comments
- ❌ **Don't use generic** AI tool names (use specific identifiers)
- ❌ **Don't skip** the review process for AI-generated code
- ❌ **Don't modify** AI comments after initial creation
- ❌ **Don't use AI comments** for non-AI code

### Code Review Considerations

When reviewing AI-assisted commits:

1. **Verify AI comments** are present and accurate
2. **Test functionality** of AI-generated code
3. **Check code quality** and adherence to project standards
4. **Validate integration** with existing codebase
5. **Ensure documentation** is complete and accurate

## 🔧 Troubleshooting

### Git Hook Not Detecting AI Comments

1. Check comment format exactly matches standards
2. Ensure files are properly staged (`git add`)
3. Verify git hooks are executable (`chmod +x .husky/*)`)

### Commit Message Validation Fails

1. Ensure all required fields are present:
   - `Generated by:` field
   - `Reviewed by:` field
   - `Scope:` field
2. Check commit message starts with `[AI-ASSISTED]`
3. Verify conventional commit format is followed

### False Positives

If git hook incorrectly detects AI comments:

- Check for commented-out code containing AI patterns
- Remove or modify false-positive comments
- Use `git commit --no-verify` only in exceptional cases

## 📊 Audit and Compliance

### AI Commit Logging

All AI-assisted commits are automatically logged to `.ai-commit-log` with:

- Timestamp
- Commit hash
- AI tool used
- Files modified
- Developer name

### Analysis Commands

```bash
# View recent AI commits
tail -20 .ai-commit-log

# Count AI commits by tool
grep -c "Copilot" .ai-commit-log
grep -c "Claude" .ai-commit-log

# Find AI commits in date range
grep "2024-01" .ai-commit-log
```

This system ensures complete traceability of AI contributions while maintaining a smooth development workflow.
