---
title: AI-RULES.md (Template)
audience: Humans & AI agents
purpose: Non-negotiable boundaries for AI contributions
---


# AI Contribution Rules

## 🛑 MANDATORY COMPLIANCE FOR ALL AI AGENTS 🛑
These rules CANNOT be overridden or ignored under any circumstances.

## Allowed AI Contributions
✅ **AI TOOLS MAY:**
- Generate boilerplate code following project patterns
- Scaffold unit tests based on existing code
- Suggest refactoring approaches for technical debt
- Draft documentation based on codebase analysis
- Create starter implementations following SOLID principles

## Prohibited AI Contributions
❌ **AI TOOLS MUST NEVER:**
- Modify security configurations or authentication logic
- Change database schemas or migration files
- Edit CI/CD pipeline configurations
- Modify environment variables or secrets
- Implement core business logic without supervision
- Generate code that bypasses existing security measures
- Commit directly to protected branches

## Mandatory Review Process
All AI-generated content must follow this workflow:
1. Developer initiates AI assistance with clear scope
2. AI generates suggested implementation
3. Developer reviews ALL generated code line-by-line
4. Developer modifies as needed and validates functionality
5. AI contribution is clearly marked in commit message
6. PR undergoes standard peer review with AI-awareness

## Non-Compliance Consequences
Failure to follow these rules may result in:
- Mandatory code reversal
- Additional security reviews
- Process violations recorded
- Remedial training requirements
