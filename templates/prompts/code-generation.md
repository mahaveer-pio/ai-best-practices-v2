---
title: Code Generation Prompts
audience: Developers & AI tools
purpose: Reusable prompts for AI-assisted code generation
---

# Code Generation Prompts

This collection contains tested prompts for generating high-quality code with AI assistance. Each prompt follows best practices and includes proper AI commenting requirements.

## General Principles

**Always include in your prompts:**
- Clear requirements and constraints
- Expected coding patterns and conventions
- Security considerations
- Performance requirements
- Test requirements

**AI Comment Reminder:**
All generated code should include the appropriate AI comment:
- `// [AI-Generated-{ToolName}] - Brief description`
- `# [AI-Generated-{ToolName}] - Brief description` 
- `/* [AI-Generated-{ToolName}] - Brief description */`

---

## Backend API Development

### REST API Endpoint Generation

```
Generate a RESTful API endpoint for {RESOURCE_NAME} with the following requirements:

**Functional Requirements:**
- CRUD operations: Create, Read, Update, Delete
- Input validation and sanitization
- Error handling with appropriate HTTP status codes
- Response formatting consistent with existing API

**Technical Requirements:**
- Use {FRAMEWORK} (Express.js/FastAPI/Spring Boot/ASP.NET)
- Follow existing project patterns in {CODEBASE_CONTEXT}
- Include proper TypeScript types / Python type hints / Java interfaces
- Add comprehensive JSDoc / docstring documentation

**Security Requirements:**
- Input validation for all parameters
- Authentication/authorization checks
- Rate limiting considerations
- SQL injection prevention

**Testing Requirements:**
- Unit tests for all methods
- Integration tests for API endpoints
- Error case testing
- Mock external dependencies

**Please add the AI comment: // [AI-Generated-{TOOL}] - {RESOURCE_NAME} CRUD API endpoint**

Example structure to follow: {PASTE_EXISTING_ENDPOINT_EXAMPLE}
```

### Database Integration

```
Generate database integration code for {ENTITY_NAME} with the following specifications:

**Data Model:**
- Entity: {ENTITY_NAME}
- Fields: {LIST_FIELDS_AND_TYPES}
- Relationships: {DESCRIBE_RELATIONSHIPS}
- Constraints: {LIST_CONSTRAINTS}

**Technical Requirements:**
- ORM: {SPECIFY_ORM} (Prisma/SQLAlchemy/Hibernate/Entity Framework)
- Database: {DATABASE_TYPE} (PostgreSQL/MySQL/MongoDB)
- Include migration scripts
- Add proper indexing suggestions

**Performance Requirements:**
- Optimize for {QUERY_PATTERNS}
- Include pagination for list operations
- Add caching strategy recommendations

**Security Requirements:**
- Prevent SQL injection
- Validate all inputs
- Implement proper access controls

**Please add the AI comment: // [AI-Generated-{TOOL}] - {ENTITY_NAME} database integration**

Reference existing models: {PASTE_EXISTING_MODEL_EXAMPLE}
```

---

## Frontend Component Development

### React Component Generation

```
Generate a React component for {COMPONENT_PURPOSE} with these specifications:

**Functional Requirements:**
- Component name: {COMPONENT_NAME}
- Props interface: {LIST_PROPS_AND_TYPES}
- State management: {STATE_STRATEGY} (useState/useReducer/external store)
- Event handling: {LIST_EVENTS}

**Technical Requirements:**
- TypeScript with strict mode
- React {VERSION} with hooks
- Follow existing component patterns in {PROJECT_CONTEXT}
- Responsive design for mobile/desktop
- Accessibility (WCAG 2.1 AA compliance)

**Styling Requirements:**
- CSS-in-JS: {STYLING_SOLUTION} (styled-components/emotion/Tailwind)
- Follow existing design system
- Include hover/focus/active states
- Dark/light mode support

**Testing Requirements:**
- Unit tests with React Testing Library
- Accessibility testing
- User interaction testing
- Error boundary handling

**Please add the AI comment: // [AI-Generated-{TOOL}] - {COMPONENT_NAME} component**

Follow this pattern: {PASTE_EXISTING_COMPONENT_EXAMPLE}
```

### Form Handling

```
Create a form component for {FORM_PURPOSE} with comprehensive validation:

**Form Requirements:**
- Fields: {LIST_FIELDS_AND_TYPES}
- Validation rules: {SPECIFY_VALIDATION_RULES}
- Submit behavior: {DESCRIBE_SUBMIT_ACTION}
- Error handling: {ERROR_DISPLAY_STRATEGY}

**Technical Implementation:**
- Form library: {FORM_LIBRARY} (react-hook-form/Formik/native)
- Validation: {VALIDATION_LIBRARY} (Yup/Zod/custom)
- TypeScript interfaces for form data
- Accessibility features (ARIA labels, error announcements)

**UX Requirements:**
- Real-time validation feedback
- Loading states during submission
- Success/error message display
- Field focusing on errors

**Security Considerations:**
- Input sanitization
- XSS prevention
- CSRF protection
- Rate limiting

**Please add the AI comment: // [AI-Generated-{TOOL}] - {FORM_PURPOSE} form component**

Reference existing form: {PASTE_EXISTING_FORM_EXAMPLE}
```

---

## Utility Functions

### Data Processing Utilities

```
Generate utility functions for {DATA_PROCESSING_TASK} with the following requirements:

**Functional Requirements:**
- Input: {DESCRIBE_INPUT_FORMAT}
- Output: {DESCRIBE_OUTPUT_FORMAT}
- Processing logic: {DESCRIBE_TRANSFORMATION}
- Edge cases: {LIST_EDGE_CASES_TO_HANDLE}

**Technical Requirements:**
- Language: {PROGRAMMING_LANGUAGE}
- Pure functions (no side effects)
- Immutable data handling
- Strong typing with {TYPE_SYSTEM}

**Performance Requirements:**
- Time complexity: {TARGET_COMPLEXITY}
- Memory efficiency for large datasets
- Consider lazy evaluation if applicable

**Error Handling:**
- Input validation
- Graceful degradation
- Meaningful error messages
- Logging for debugging

**Testing Requirements:**
- Unit tests with edge cases
- Property-based testing if applicable
- Performance benchmarking
- Mock external dependencies

**Please add the AI comment: // [AI-Generated-{TOOL}] - {DATA_PROCESSING_TASK} utilities**

Example usage pattern: {PROVIDE_USAGE_EXAMPLE}
```

### API Client Generation

```
Create an API client for {SERVICE_NAME} with the following specifications:

**API Details:**
- Base URL: {API_BASE_URL}
- Authentication: {AUTH_TYPE} (JWT/API Key/OAuth)
- Endpoints: {LIST_ENDPOINTS_TO_IMPLEMENT}
- Rate limits: {RATE_LIMIT_INFO}

**Technical Requirements:**
- HTTP client: {CLIENT_LIBRARY} (axios/fetch/requests)
- TypeScript interfaces for all request/response types
- Error handling and retry logic
- Request/response interceptors
- Timeout configuration

**Features:**
- Automatic token refresh
- Request caching where appropriate
- Request deduplication
- Loading state management
- Error boundary integration

**Testing Requirements:**
- Unit tests with mocked responses
- Integration tests with test API
- Error scenario testing
- Network failure handling

**Please add the AI comment: // [AI-Generated-{TOOL}] - {SERVICE_NAME} API client**

Follow existing client pattern: {PASTE_EXISTING_CLIENT_EXAMPLE}
```

---

## Algorithm Implementation

### Data Structure Implementation

```
Implement a {DATA_STRUCTURE_NAME} data structure with the following requirements:

**Functional Requirements:**
- Operations: {LIST_REQUIRED_OPERATIONS}
- Time complexity requirements: {SPECIFY_COMPLEXITIES}
- Space complexity: {SPACE_REQUIREMENTS}
- Thread safety: {THREAD_SAFETY_REQUIREMENTS}

**Implementation Details:**
- Language: {PROGRAMMING_LANGUAGE}
- Use generics/templates for type safety
- Internal structure: {DESCRIBE_INTERNAL_REPRESENTATION}
- Memory management: {MEMORY_STRATEGY}

**Interface Design:**
- Public methods: {LIST_PUBLIC_METHODS}
- Method signatures with proper typing
- Iterator support if applicable
- Serialization/deserialization

**Quality Requirements:**
- Comprehensive unit tests
- Performance benchmarks
- Memory leak detection
- Documentation with examples

**Please add the AI comment: // [AI-Generated-{TOOL}] - {DATA_STRUCTURE_NAME} implementation**

Reference implementation style: {PASTE_EXISTING_DATA_STRUCTURE}
```

---

## Configuration & Setup

### Environment Configuration

```
Generate environment configuration setup for {PROJECT_TYPE} with these requirements:

**Configuration Categories:**
- Database connections
- External service APIs
- Security keys and tokens
- Feature flags
- Performance settings

**Technical Requirements:**
- Configuration format: {CONFIG_FORMAT} (JSON/YAML/ENV)
- Environment separation: {ENVIRONMENTS} (dev/staging/prod)
- Secret management: {SECRET_STRATEGY}
- Validation and type checking

**Security Requirements:**
- No secrets in version control
- Encrypted sensitive values
- Access control for production configs
- Audit logging for config changes

**Developer Experience:**
- Clear documentation for each setting
- Default values for development
- Easy local setup process
- Configuration validation on startup

**Please add the AI comment: # [AI-Generated-{TOOL}] - Environment configuration setup**

Follow existing config pattern: {PASTE_EXISTING_CONFIG_EXAMPLE}
```

---

## Usage Guidelines

### Customizing Prompts

1. **Replace placeholders** in `{CURLY_BRACES}` with your specific requirements
2. **Add project context** by including existing code examples
3. **Specify constraints** relevant to your codebase and standards
4. **Include performance requirements** based on your application needs
5. **Always specify the AI tool** in the comment request

### Best Practices

- **Be specific** about requirements rather than vague
- **Provide examples** of existing code patterns to follow
- **Include testing requirements** in every prompt
- **Specify security considerations** for all generated code
- **Request proper documentation** and type annotations

### Quality Checklist

Before using generated code:
- [ ] AI comment is present and accurate
- [ ] Code follows project conventions
- [ ] All inputs are validated
- [ ] Error handling is comprehensive
- [ ] Tests are included
- [ ] Security considerations are addressed
- [ ] Performance requirements are met
- [ ] Documentation is complete

---

## Contributing New Prompts

When adding new prompts to this collection:

1. **Test thoroughly** with your preferred AI tools
2. **Include all placeholders** marked with `{BRACKETS}`
3. **Add usage examples** and expected outcomes
4. **Document any limitations** or special considerations
5. **Follow the existing format** and structure

**Template for new prompts:**
```
### {Prompt Title}

{Brief description of what this prompt generates}

```
{Your detailed prompt with placeholders}
```

**Usage Notes:**
- {Any special considerations}
- {Example of when to use this prompt}
- {Common pitfalls to avoid}
```