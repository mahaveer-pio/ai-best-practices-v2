---
title: AI-USAGE.md (Template)
audience: Humans (developers, reviewers); **AI may read** to understand disclosure expectations
purpose: Provide a transparent log & scope of AI usage in a project
---


# AI Usage in This Project
## AI Tools in Use
- GitHub Copilot Agent: Code generation, refactoring suggestions
- Claude: Documentation, architectural advice
- RooCode: Legacy code modernization
- Cursor: Code exploration, pattern detection
## Scope of AI Usage
✅ **We use AI for:**
- Boilerplate code generation (controllers, models, DTOs)
- Unit test scaffolding and coverage improvement
- Documentation drafting and enhancement
- Code refactoring suggestions
- Developer workflow optimization
❌ **We DO NOT use AI for:**
- Core business logic implementation
- Security-critical components
- Database schema design or direct query generation
- Infrastructure configuration
- Authentication and authorization logic
## Review Policy
- All AI-generated code undergoes mandatory peer review
- AI commits are tagged with `[AI-ASSISTED]` for traceability
- Weekly AI usage review in team retrospectives
## Usage Log

| Date | Developer | Component | AI Tool | Description |
|---|---|---|---|---|
| 2025-08-30 | Jane Smith | OrderController | GitHub Copilot | Generated CRUD endpoints |
| 2025-09-01 | John Doe | Documentation | Claude | API reference updates |
