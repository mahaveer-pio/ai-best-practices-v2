---
title: Documentation Prompts
audience: Developers, Technical Writers, Product Managers
purpose: AI-assisted documentation creation and maintenance
---

# Documentation Prompts

This collection provides comprehensive prompts for AI-assisted documentation creation, API documentation, user guides, and technical writing. These prompts help create clear, comprehensive, and maintainable documentation.

## API Documentation

### Comprehensive API Documentation

```
Generate comprehensive API documentation for {API_NAME} with the following specifications:

**API Overview:**
- API purpose: {API_BUSINESS_PURPOSE}
- Target audience: {DEVELOPERS_PARTNERS_INTERNAL}
- API type: {REST_GRAPHQL_GRPC_DESCRIPTION}
- Base URL: {API_BASE_URL}
- Current version: {API_VERSION}

**Authentication Documentation:**
- Authentication method: {JWT_OAUTH_API_KEY_DESCRIPTION}
- Token acquisition: {HOW_TO_GET_TOKENS}
- Token usage: {HOW_TO_USE_TOKENS}
- Security considerations: {SECURITY_BEST_PRACTICES}
- Rate limiting: {RATE_LIMIT_POLICIES}

**Endpoints Documentation:**
For each endpoint: {LIST_ENDPOINTS_TO_DOCUMENT}
- HTTP method and path
- Purpose and business context
- Request parameters (path, query, headers, body)
- Request/response examples with realistic data
- Error responses with status codes
- Rate limiting information

**Data Models:**
- Request/response schemas: {DATA_MODEL_SPECIFICATIONS}
- Data types and validation rules
- Required vs optional fields
- Enum values and constraints
- Relationships between models

**Code Examples:**
- Programming languages: {LANGUAGES_FOR_EXAMPLES} (JavaScript, Python, cURL, etc.)
- SDK usage examples: {SDK_INFORMATION}
- Error handling examples
- Authentication flow examples
- Common use case implementations

**Documentation Standards:**
- Format: {OPENAPI_MARKDOWN_CONFLUENCE_PREFERENCE}
- Style guide: {DOCUMENTATION_STYLE_REQUIREMENTS}
- Examples quality: {REALISTIC_DATA_REQUIREMENTS}
- Maintenance: {DOCUMENTATION_UPDATE_PROCESS}

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - API documentation for {API_NAME} -->**

Existing API implementation: {PASTE_RELEVANT_API_CODE}
```

### SDK and Library Documentation

```
Create comprehensive documentation for {SDK_LIBRARY_NAME} with the following requirements:

**Library Overview:**
- Purpose: {LIBRARY_PURPOSE_AND_SCOPE}
- Target audience: {DEVELOPER_AUDIENCE}
- Programming language: {LANGUAGE_AND_VERSION}
- Installation method: {NPM_PIP_MAVEN_INSTALLATION}
- Dependencies: {REQUIRED_DEPENDENCIES}

**Getting Started Guide:**
- Installation instructions: {STEP_BY_STEP_INSTALLATION}
- Initial configuration: {CONFIGURATION_REQUIREMENTS}
- First example: {HELLO_WORLD_EXAMPLE}
- Common setup issues: {TROUBLESHOOTING_SETUP}
- Quick start checklist: {GETTING_STARTED_CHECKLIST}

**API Reference:**
- Classes/modules: {LIST_MAIN_CLASSES_MODULES}
- Methods/functions: {CORE_FUNCTIONALITY_LIST}
- Parameters and return types: {TYPE_DOCUMENTATION_REQUIREMENTS}
- Code examples for each method
- Error handling patterns

**Usage Examples:**
- Common use cases: {LIST_PRIMARY_USE_CASES}
- Advanced scenarios: {COMPLEX_USAGE_SCENARIOS}
- Integration patterns: {INTEGRATION_EXAMPLES}
- Best practices: {USAGE_BEST_PRACTICES}
- Performance considerations: {PERFORMANCE_GUIDELINES}

**Configuration & Customization:**
- Configuration options: {CONFIGURATION_PARAMETERS}
- Environment variables: {ENV_VAR_DOCUMENTATION}
- Customization examples: {CUSTOMIZATION_SCENARIOS}
- Plugin/extension points: {EXTENSIBILITY_OPTIONS}

**Migration & Compatibility:**
- Version compatibility: {VERSION_COMPATIBILITY_MATRIX}
- Breaking changes: {BREAKING_CHANGES_DOCUMENTATION}
- Migration guides: {MIGRATION_FROM_PREVIOUS_VERSIONS}
- Deprecation notices: {DEPRECATED_FEATURES}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Documentation for {SDK_LIBRARY_NAME}**

Library source code context: {PROVIDE_KEY_SOURCE_FILES}
```

---

## Technical Guides & Tutorials

### Step-by-Step Tutorial Creation

```
Create a comprehensive tutorial for {TUTORIAL_TOPIC} targeting {TARGET_AUDIENCE}:

**Tutorial Context:**
- Learning objective: {WHAT_USERS_WILL_ACCOMPLISH}
- Prerequisites: {REQUIRED_KNOWLEDGE_AND_TOOLS}
- Estimated time: {COMPLETION_TIME_ESTIMATE}
- Difficulty level: {BEGINNER_INTERMEDIATE_ADVANCED}
- Technology stack: {TECHNOLOGIES_COVERED}

**Tutorial Structure:**
1. **Introduction** - What we'll build and why
2. **Prerequisites** - Setup and requirements
3. **Step-by-step implementation** - Detailed walkthrough
4. **Testing and validation** - Verify everything works
5. **Next steps** - Additional learning paths

**Content Requirements:**
- Clear explanations: {EXPLANATION_DEPTH_REQUIREMENTS}
- Code examples: {CODE_EXAMPLE_SPECIFICATIONS}
- Screenshots/diagrams: {VISUAL_AID_REQUIREMENTS}
- Troubleshooting: {COMMON_ISSUES_AND_SOLUTIONS}
- Additional resources: {REFERENCE_LINKS_REQUIREMENTS}

**Interactive Elements:**
- Code snippets with syntax highlighting
- Copy-to-clipboard functionality
- Interactive examples: {LIVE_DEMO_REQUIREMENTS}
- Checkpoints and progress tracking
- Exercise variations

**Learning Reinforcement:**
- Key takeaways: {SUMMARIZE_LEARNING_POINTS}
- Practice exercises: {HANDS_ON_EXERCISES}
- Challenge projects: {EXTENDED_PROJECT_IDEAS}
- Community engagement: {DISCUSSION_PROMPTS}

**Quality Assurance:**
- Technical accuracy: {ACCURACY_VERIFICATION_REQUIREMENTS}
- Testing instructions: {TUTORIAL_TESTING_PROCESS}
- User feedback integration: {FEEDBACK_COLLECTION_STRATEGY}
- Update maintenance: {CONTENT_MAINTENANCE_PLAN}

**Accessibility:**
- Reading level: {TARGET_READING_LEVEL}
- Language considerations: {LOCALIZATION_REQUIREMENTS}
- Visual accessibility: {ACCESSIBILITY_COMPLIANCE}
- Multi-format support: {FORMAT_REQUIREMENTS}

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Tutorial for {TUTORIAL_TOPIC} -->**

Related tutorials and content: {EXISTING_TUTORIAL_ECOSYSTEM}
```

### Architecture Decision Records (ADRs)

```
Create an Architecture Decision Record for {DECISION_TOPIC} with comprehensive context:

**Decision Context:**
- Problem statement: {WHAT_PROBLEM_ARE_WE_SOLVING}
- Business context: {BUSINESS_DRIVERS_AND_CONSTRAINTS}
- Technical context: {CURRENT_SYSTEM_STATE}
- Decision scope: {WHAT_IS_IN_OUT_OF_SCOPE}
- Decision makers: {WHO_IS_INVOLVED_IN_DECISION}

**Options Analysis:**
For each option considered: {LIST_OPTIONS_EVALUATED}
- Option description and approach
- Pros and cons analysis
- Cost implications (development, operational, maintenance)
- Risk assessment and mitigation strategies
- Implementation complexity and timeline

**Decision Criteria:**
- Technical criteria: {TECHNICAL_EVALUATION_FACTORS}
- Business criteria: {BUSINESS_EVALUATION_FACTORS}
- Quality attributes: {PERFORMANCE_SECURITY_MAINTAINABILITY}
- Constraints: {TECHNICAL_BUSINESS_TIME_CONSTRAINTS}
- Success metrics: {HOW_TO_MEASURE_SUCCESS}

**Recommended Decision:**
- Selected option: {CHOSEN_SOLUTION}
- Rationale: {WHY_THIS_OPTION_WAS_CHOSEN}
- Trade-offs accepted: {COMPROMISES_AND_LIMITATIONS}
- Implementation plan: {HIGH_LEVEL_IMPLEMENTATION_STEPS}
- Risk mitigation: {RISK_MANAGEMENT_APPROACH}

**Implementation Considerations:**
- Technical requirements: {IMPLEMENTATION_REQUIREMENTS}
- Resource requirements: {TEAM_TIME_BUDGET_NEEDS}
- Timeline and milestones: {PROJECT_TIMELINE}
- Dependencies: {INTERNAL_EXTERNAL_DEPENDENCIES}
- Success criteria: {DEFINITION_OF_DONE}

**Future Considerations:**
- Review schedule: {WHEN_TO_REVISIT_DECISION}
- Evolution path: {FUTURE_ENHANCEMENT_POSSIBILITIES}
- Reversal conditions: {WHEN_TO_RECONSIDER}
- Impact on future decisions: {ARCHITECTURAL_IMPLICATIONS}

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - ADR for {DECISION_TOPIC} -->**

Current architecture context: {EXISTING_ARCHITECTURE_OVERVIEW}
```

---

## User Documentation

### User Guide Creation

```
Create comprehensive user documentation for {PRODUCT_FEATURE_NAME} targeting {USER_TYPE}:

**User Context:**
- User personas: {PRIMARY_SECONDARY_USER_TYPES}
- User goals: {WHAT_USERS_WANT_TO_ACCOMPLISH}
- Experience level: {USER_TECHNICAL_EXPERTISE}
- Use case scenarios: {COMMON_USER_WORKFLOWS}
- Pain points: {KNOWN_USER_CHALLENGES}

**Documentation Structure:**
1. **Overview** - What the feature does and benefits
2. **Getting started** - Quick setup and first steps
3. **Core functionality** - Main features and workflows
4. **Advanced usage** - Power user features
5. **Troubleshooting** - Common issues and solutions
6. **FAQ** - Frequently asked questions

**Content Requirements:**
- Clear, jargon-free language
- Step-by-step instructions with screenshots
- Real-world examples and use cases
- Visual aids: {SCREENSHOT_DIAGRAM_REQUIREMENTS}
- Video content: {VIDEO_TUTORIAL_NEEDS}

**User Workflow Documentation:**
- Primary workflows: {LIST_MAIN_USER_JOURNEYS}
- Alternative paths: {ALTERNATIVE_APPROACHES}
- Error recovery: {ERROR_HANDLING_USER_GUIDANCE}
- Integration workflows: {CROSS_FEATURE_WORKFLOWS}
- Mobile/desktop differences: {PLATFORM_SPECIFIC_GUIDANCE}

**Interactive Elements:**
- Searchable content structure
- Interactive tutorials or walkthroughs
- Feedback collection mechanisms
- Community discussion integration
- Progress tracking for complex procedures

**Accessibility & Usability:**
- Reading level: {TARGET_READING_COMPREHENSION_LEVEL}
- Multiple learning styles: {VISUAL_AUDITORY_KINESTHETIC_SUPPORT}
- International considerations: {LOCALIZATION_REQUIREMENTS}
- Accessibility compliance: {WCAG_COMPLIANCE_REQUIREMENTS}

**Maintenance Strategy:**
- Content review schedule: {DOCUMENTATION_REVIEW_FREQUENCY}
- User feedback integration: {FEEDBACK_PROCESSING_APPROACH}
- Version control: {DOCUMENTATION_VERSIONING_STRATEGY}
- Analytics and usage tracking: {CONTENT_PERFORMANCE_METRICS}

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - User guide for {PRODUCT_FEATURE_NAME} -->**

Product context and existing documentation: {CURRENT_DOCUMENTATION_STATE}
```

### FAQ and Troubleshooting Documentation

```
Create comprehensive FAQ and troubleshooting documentation for {PRODUCT_SYSTEM_NAME}:

**Content Sources:**
- Support ticket analysis: {COMMON_SUPPORT_ISSUES}
- User feedback: {RECURRING_USER_QUESTIONS}
- Product complexity areas: {COMPLEX_FEATURES_AREAS}
- Integration challenges: {INTEGRATION_PAIN_POINTS}
- Performance issues: {PERFORMANCE_RELATED_PROBLEMS}

**FAQ Categories:**
1. **Getting Started** - Setup, configuration, first-time use
2. **Core Functionality** - Main feature questions
3. **Troubleshooting** - Problem resolution
4. **Integration** - Third-party system integration
5. **Account/Billing** - Account management questions
6. **Security** - Security and privacy questions

**FAQ Structure for Each Item:**
- Clear, specific question phrasing
- Concise, actionable answer
- Step-by-step solutions where applicable
- Related questions and cross-references
- When to contact support escalation

**Troubleshooting Framework:**
- Problem identification: {DIAGNOSTIC_QUESTIONS}
- Common causes: {ROOT_CAUSE_ANALYSIS}
- Step-by-step solutions: {RESOLUTION_PROCEDURES}
- Alternative approaches: {WORKAROUND_OPTIONS}
- Prevention strategies: {PREVENTIVE_MEASURES}

**Content Organization:**
- Logical categorization and tagging
- Search optimization for common terms
- Cross-referencing between related issues
- Difficulty level indicators
- Estimated resolution time

**User Self-Service:**
- Diagnostic tools and checklists
- Interactive troubleshooting wizards
- Video demonstrations for complex issues
- Community-contributed solutions
- Escalation paths to support

**Content Quality:**
- Clear, non-technical language
- Comprehensive but concise answers
- Regular testing of provided solutions
- User feedback integration
- Continuous improvement based on support data

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - FAQ and troubleshooting for {PRODUCT_SYSTEM_NAME} -->**

Support data and common issues: {SUPPORT_TICKET_ANALYSIS_DATA}
```

---

## Code Documentation

### Inline Code Documentation

```
Generate comprehensive inline documentation for the following code:

**Code to Document:**
```{LANGUAGE}
{PASTE_CODE_TO_DOCUMENT}
```

**Documentation Requirements:**
- Documentation style: {JSDOC_SPHINX_JAVADOC_XMLDOC}
- Language: {PROGRAMMING_LANGUAGE_SPECIFICS}
- Audience: {MAINTENANCE_DEVELOPERS_API_CONSUMERS}
- Detail level: {BASIC_COMPREHENSIVE_EXHAUSTIVE}
- Examples: {INCLUDE_USAGE_EXAMPLES}

**Documentation Elements:**
1. **Function/Method Documentation**
   - Purpose and behavior description
   - Parameter descriptions with types
   - Return value description
   - Exception/error conditions
   - Usage examples
   - Performance considerations

2. **Class Documentation**  
   - Class purpose and responsibilities
   - Constructor parameters
   - Public interface overview
   - Usage patterns and examples
   - Inheritance and interface relationships

3. **Complex Logic Documentation**
   - Algorithm explanations
   - Business rule clarifications
   - Performance characteristics
   - Edge case handling
   - Assumptions and constraints

**Code Comment Standards:**
- Clear, concise explanations
- Avoid restating obvious code
- Explain "why" not just "what"
- Include context for business logic
- Reference external documentation where relevant

**API Documentation (if applicable):**
- Public method contracts
- Threading considerations
- Memory management notes
- Performance implications
- Version compatibility notes

**Quality Requirements:**
- Accuracy and technical correctness
- Consistency with codebase standards
- Maintainability and update procedures
- Integration with documentation tools
- Code review compatibility

**Please add the AI comment: // [AI-Generated-{TOOL}] - Code documentation**

Existing documentation style examples: {CURRENT_DOCUMENTATION_PATTERNS}
```

### README File Generation

```
Create a comprehensive README file for {PROJECT_NAME} with the following specifications:

**Project Context:**
- Project type: {LIBRARY_APPLICATION_TOOL_FRAMEWORK}
- Target audience: {DEVELOPERS_USERS_CONTRIBUTORS}
- Technology stack: {LANGUAGES_FRAMEWORKS_TOOLS}
- Project maturity: {PROOF_OF_CONCEPT_PRODUCTION_STABLE}
- License: {PROJECT_LICENSE_INFORMATION}

**README Structure:**
1. **Project Title and Description** - Clear, compelling overview
2. **Badges** - Build status, version, license, etc.
3. **Quick Start** - Immediate value demonstration
4. **Installation** - Step-by-step setup instructions
5. **Usage** - Basic to advanced examples
6. **Documentation** - Links to detailed docs
7. **Contributing** - How to contribute
8. **License** - Legal information

**Key Sections Content:**
- **Installation requirements**: {SYSTEM_DEPENDENCIES}
- **Configuration options**: {CONFIGURATION_PARAMETERS}
- **Usage examples**: {COMMON_USE_CASES}
- **API overview**: {KEY_FUNCTIONALITY}
- **Troubleshooting**: {COMMON_ISSUES}

**Quality Standards:**
- Clear, scannable formatting with headers
- Code examples with syntax highlighting
- Links to additional resources
- Mobile-friendly markdown formatting
- Regular maintenance and updates

**Visual Elements:**
- Architecture diagrams: {DIAGRAM_REQUIREMENTS}
- Screenshots: {UI_SCREENSHOTS_NEEDED}
- GIFs/videos: {DEMO_CONTENT_REQUIREMENTS}
- Badges and status indicators
- Logo and branding elements

**Community Elements:**
- Contribution guidelines
- Code of conduct reference
- Issue templates
- Community resources and support channels
- Acknowledgments and credits

**Maintenance Considerations:**
- Version-specific information handling
- Link maintenance and validation
- Example code synchronization
- Translation and localization support
- Analytics and usage tracking

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - README for {PROJECT_NAME} -->**

Project structure and key files: {PROJECT_STRUCTURE_OVERVIEW}
```

---

## Release Documentation

### Release Notes and Changelog

```
Generate comprehensive release notes for {PROJECT_NAME} version {VERSION_NUMBER}:

**Release Context:**
- Release type: {MAJOR_MINOR_PATCH_HOTFIX}
- Target audience: {DEVELOPERS_END_USERS_ADMINISTRATORS}
- Release scope: {FEATURE_RELEASE_BUG_FIXES_SECURITY}
- Backward compatibility: {BREAKING_COMPATIBLE_DEPRECATED}
- Release timeline: {RELEASE_DATE_AND_SCHEDULE}

**Release Content Analysis:**
- New features: {LIST_NEW_FUNCTIONALITY}
- Improvements: {ENHANCED_EXISTING_FEATURES}
- Bug fixes: {RESOLVED_ISSUES}
- Security updates: {SECURITY_PATCHES}
- Performance changes: {PERFORMANCE_IMPROVEMENTS}
- Dependencies: {DEPENDENCY_UPDATES}

**Release Notes Structure:**
1. **Release Summary** - High-level overview and highlights
2. **What's New** - New features with examples
3. **Improvements** - Enhanced functionality
4. **Bug Fixes** - Issue resolutions
5. **Breaking Changes** - Compatibility impacts
6. **Migration Guide** - Upgrade instructions
7. **Known Issues** - Current limitations

**Technical Documentation:**
- API changes: {API_MODIFICATIONS}
- Configuration changes: {CONFIG_UPDATES}
- Database migrations: {SCHEMA_CHANGES}
- Infrastructure requirements: {INFRASTRUCTURE_UPDATES}
- Third-party integrations: {INTEGRATION_CHANGES}

**User Impact Analysis:**
- Feature benefits: {USER_VALUE_PROPOSITION}
- Workflow changes: {USER_EXPERIENCE_CHANGES}
- Learning curve: {TRAINING_REQUIREMENTS}
- Migration effort: {UPGRADE_COMPLEXITY}
- Support considerations: {SUPPORT_IMPLICATIONS}

**Communication Strategy:**
- Announcement channels: {COMMUNICATION_CHANNELS}
- Audience segmentation: {DIFFERENT_AUDIENCE_MESSAGING}
- Timeline communication: {RELEASE_SCHEDULE_COMMUNICATION}
- Feedback collection: {USER_FEEDBACK_MECHANISMS}

**Quality Assurance:**
- Technical accuracy verification
- User-friendly language
- Complete feature coverage
- Link validation and maintenance
- Multi-format publishing (web, email, PDF)

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Release notes for {PROJECT_NAME} v{VERSION_NUMBER} -->**

Commit history and change log: {DEVELOPMENT_CHANGES_SUMMARY}
```

---

## Documentation Maintenance

### Documentation Audit and Improvement

```
Conduct a comprehensive documentation audit for {DOCUMENTATION_SCOPE} and provide improvement recommendations:

**Audit Scope:**
- Documentation types: {API_DOCS_USER_GUIDES_TUTORIALS}
- Content volume: {NUMBER_OF_PAGES_DOCUMENTS}
- Target audiences: {USER_SEGMENTS_TO_EVALUATE}
- Platforms: {DOCUMENTATION_PLATFORMS_USED}
- Update frequency: {CURRENT_MAINTENANCE_SCHEDULE}

**Quality Assessment Criteria:**
1. **Accuracy** - Technical correctness and currency
2. **Completeness** - Coverage of features and use cases
3. **Clarity** - Language, structure, and comprehension
4. **Usability** - Navigation, search, and accessibility
5. **Consistency** - Style, format, and terminology

**Content Analysis:**
- Outdated content identification: {CONTENT_CURRENCY_REVIEW}
- Gap analysis: {MISSING_DOCUMENTATION_AREAS}
- Redundancy assessment: {DUPLICATE_CONTENT_IDENTIFICATION}
- User feedback analysis: {USER_SATISFACTION_METRICS}
- Analytics review: {USAGE_PATTERNS_AND_POPULAR_CONTENT}

**User Experience Evaluation:**
- Information architecture: {CONTENT_ORGANIZATION_ASSESSMENT}
- Search functionality: {SEARCH_EFFECTIVENESS_REVIEW}
- Mobile accessibility: {MOBILE_EXPERIENCE_EVALUATION}
- Load times and performance: {DOCUMENTATION_SITE_PERFORMANCE}
- Cross-platform consistency: {MULTI_PLATFORM_EXPERIENCE}

**Technical Assessment:**
- Documentation toolchain: {AUTHORING_PUBLISHING_TOOLS}
- Automation capabilities: {AUTOMATED_DOCUMENTATION_PROCESSES}
- Version control integration: {DOCUMENTATION_VERSION_CONTROL}
- Analytics and tracking: {DOCUMENTATION_ANALYTICS_SETUP}
- Maintenance workflows: {CONTENT_MAINTENANCE_PROCESSES}

**Improvement Recommendations:**
1. **Priority 1 (Critical)** - Immediate fixes needed
2. **Priority 2 (High)** - Important improvements
3. **Priority 3 (Medium)** - Nice-to-have enhancements
4. **Long-term strategy** - Structural improvements

**Implementation Plan:**
- Quick wins: {IMMEDIATE_IMPROVEMENT_OPPORTUNITIES}
- Resource requirements: {TEAM_TIME_TOOL_REQUIREMENTS}
- Timeline and milestones: {IMPROVEMENT_PROJECT_TIMELINE}
- Success metrics: {DOCUMENTATION_QUALITY_METRICS}
- Ongoing maintenance: {SUSTAINABLE_MAINTENANCE_STRATEGY}

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Documentation audit for {DOCUMENTATION_SCOPE} -->**

Current documentation state: {EXISTING_DOCUMENTATION_OVERVIEW}
```

---

## Usage Guidelines

### Documentation Writing Best Practices

1. **Know your audience** - Tailor content to user expertise and needs
2. **Start with user goals** - Focus on what users want to accomplish
3. **Use clear, simple language** - Avoid jargon and unnecessary complexity
4. **Provide examples** - Show, don't just tell
5. **Test your documentation** - Have others follow your instructions

### Documentation Quality Checklist

Before publishing documentation:
- [ ] Content is accurate and up-to-date
- [ ] Examples work and have been tested
- [ ] Language is clear and appropriate for audience
- [ ] Information is logically organized
- [ ] Links and references work correctly
- [ ] Visual aids enhance understanding
- [ ] Content is accessible to all users
- [ ] Feedback mechanisms are in place

### Maintenance Strategy

- **Regular reviews** - Schedule periodic content audits
- **User feedback integration** - Act on user suggestions and pain points
- **Version synchronization** - Keep docs aligned with product changes
- **Analytics monitoring** - Track usage patterns and popular content
- **Team collaboration** - Involve product and engineering teams

---

## Contributing Documentation Prompts

When adding new documentation prompts:

1. **Focus on specific documentation types** (e.g., onboarding docs, error messages)
2. **Consider different audience needs** and expertise levels
3. **Include quality and accessibility requirements**
4. **Address maintenance and sustainability**
5. **Provide clear structure** and organization guidance

Good documentation is essential for user adoption, developer productivity, and project success. These prompts help create documentation that serves users effectively and remains maintainable over time.