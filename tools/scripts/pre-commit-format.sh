#!/bin/bash
# Auto-format all staged files

echo "🎨 Auto-formatting code..."

# Format C# files
for file in $(git diff --cached --name-only --diff-filter=ACM | grep '\.cs$'); do
  dotnet format --include $file
  git add $file
  echo "  Formatted: $file"
done

# Format JavaScript/TypeScript
for file in $(git diff --cached --name-only --diff-filter=ACM | grep -E '\.(js|ts|jsx|tsx)$'); do
  npx prettier --write $file
  git add $file
  echo "  Formatted: $file"
done

# Format Python
for file in $(git diff --cached --name-only --diff-filter=ACM | grep '\.py$'); do
  black $file
  git add $file
  echo "  Formatted: $file"
done

# Format Markdown
for file in $(git diff --cached --name-only --diff-filter=ACM | grep '\.md$'); do
  npx prettier --write --prose-wrap always $file
  git add $file
  echo "  Formatted: $file"
done

echo "✅ Formatting complete"
exit 0
