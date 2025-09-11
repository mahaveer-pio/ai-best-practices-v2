---
title: AI-CONFIG.md (Template)
audience: Humans (developers & project owners) – **Not for AI agents**
purpose: Central configuration of approved AI tools and workflows
---


# AI Configuration

## Approved AI Tools
| Tool | Approved Use Cases | Version | License |
|---|---|---|---|
| GitHub Copilot | Code generation, refactoring | Enterprise | Company-wide |
| Claude | Documentation, architecture | Enterprise | Team-specific |
| RooCode | Legacy code analysis | Professional | Project-based |
| Cursor | Code exploration | Team | Department |

## Workflow Integration
1. **Planning Phase**
   - Use Claude for requirements clarification
   - Generate user story templates with approved prompts
2. **Development Phase**
   - Copilot for boilerplate and scaffolding
   - RooCode for legacy code modernization
   - Store all useful prompts in [`/templates/prompts/`](/templates/prompts/)
3. **Testing Phase**
   - AI-assisted test generation with coverage goals
   - Manual review of all AI-generated tests
4. **Documentation Phase**
   - Claude for documentation drafting
   - Human finalization and verification

## Performance Metrics
We measure AI tool effectiveness by tracking:
- Time saved vs. manual implementation
- Code quality metrics (before/after)
- Defect reduction in AI-assisted components
- Knowledge transfer improvements

## Update Cadence
This configuration is reviewed quarterly and updated as needed.
Last update: September 2025
