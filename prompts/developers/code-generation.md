# 👨‍💻 Developer Code Generation Prompts

**Advanced prompts for robust, production-ready code generation**

## 🎯 Master Code Generation Prompt

```
Act as a senior software engineer with expertise in [TECHNOLOGY_STACK]. I need you to implement [FEATURE_DESCRIPTION].

Think harder about this implementation. Use ultrathinking to consider:

**Deep Analysis Required:**
1. **Architectural Impact**: How does this fit into the existing system?
2. **Performance Implications**: What are the computational and memory requirements?
3. **Security Considerations**: What are potential vulnerabilities and mitigations?
4. **Scalability Factors**: How will this perform under load?
5. **Maintainability Aspects**: How easy will this be to modify and extend?

**Context:**
- Technology Stack: [YOUR_STACK]
- Existing Architecture: [DESCRIBE_ARCHITECTURE]
- Performance Requirements: [REQUIREMENTS]
- Security Constraints: [CONSTRAINTS]
- Team Coding Standards: [STANDARDS]

**Output Format:**
1. **Implementation Approach** (with reasoning)
2. **Complete Code** (with comprehensive comments)
3. **Alternative Solutions** (with trade-offs)
4. **Testing Strategy** (unit tests and edge cases)
5. **Deployment Considerations** (migration steps, rollback plan)
6. **Future Enhancements** (extensibility points)

**Validation Criteria:**
- Code follows SOLID principles
- Handles edge cases and errors gracefully
- Includes proper logging and monitoring
- Optimized for performance
- Secure by design
- Well-documented and maintainable

Please provide a forensic analysis of potential issues and their preventive measures.
```

## 🔍 Specialized Code Generation Prompts

### API Endpoint Generation

```
Act as a senior backend developer. I need to create a REST API endpoint for [ENDPOINT_PURPOSE].

Use deep forensic analysis to design this endpoint:

**Endpoint Context:**
- Purpose: [SPECIFIC_FUNCTIONALITY]
- Data Model: [DESCRIBE_DATA_STRUCTURE]
- Authentication: [AUTH_METHOD]
- Rate Limiting: [REQUIREMENTS]
- Database: [DATABASE_TYPE]

**Think Harder About:**
1. **HTTP Method Selection** (GET/POST/PUT/DELETE) with justification
2. **URL Structure** following RESTful conventions
3. **Request/Response Schemas** with validation rules
4. **Error Handling** (4xx/5xx status codes with meaningful messages)
5. **Security** (input sanitization, SQL injection prevention, XSS)
6. **Performance** (caching strategy, database optimization)
7. **Monitoring** (logging, metrics, alerts)

**Deliver:**
1. Complete endpoint implementation
2. Request/response examples
3. Error scenarios with handling
4. Unit tests covering edge cases
5. Integration test examples
6. OpenAPI/Swagger documentation
7. Security checklist validation

Use ultrathinking to anticipate production issues and provide preventive solutions.
```

### Database Schema Design

```
As a database architect, design a database schema for [BUSINESS_DOMAIN].

Perform ultrathinking analysis on:

**Schema Requirements:**
- Business Domain: [DESCRIBE_DOMAIN]
- Data Relationships: [DESCRIBE_RELATIONSHIPS]
- Query Patterns: [EXPECTED_QUERIES]
- Scale Requirements: [VOLUME_PROJECTIONS]
- Consistency Needs: [ACID_REQUIREMENTS]

**Deep Analysis Required:**
1. **Normalization Strategy** (when to normalize vs denormalize)
2. **Indexing Strategy** (primary, secondary, composite indexes)
3. **Partitioning Approach** (horizontal/vertical partitioning)
4. **Data Types Optimization** (storage efficiency vs query performance)
5. **Constraint Design** (foreign keys, unique constraints, checks)
6. **Migration Strategy** (schema evolution, backwards compatibility)

**Forensic Examination:**
- Potential performance bottlenecks
- Data integrity risks
- Scalability limitations
- Backup and recovery considerations

**Deliverables:**
1. Complete schema DDL
2. Sample data with test scenarios
3. Index recommendations with rationale
4. Query performance analysis
5. Migration scripts (up/down)
6. Data validation rules
7. Monitoring and alerting suggestions
```

### Algorithm Implementation

```
As an algorithms expert, implement [ALGORITHM_NAME] for [USE_CASE].

Think harder about algorithmic excellence:

**Algorithm Context:**
- Problem: [SPECIFIC_PROBLEM]
- Input Characteristics: [DATA_SIZE_CONSTRAINTS]
- Performance Requirements: [TIME_SPACE_COMPLEXITY]
- Edge Cases: [KNOWN_EDGE_CASES]

**Ultrathinking Analysis:**
1. **Time Complexity** (worst/average/best case with mathematical proof)
2. **Space Complexity** (memory usage patterns and optimization)
3. **Edge Case Handling** (null inputs, empty collections, boundary conditions)
4. **Optimization Opportunities** (caching, memoization, parallelization)
5. **Alternative Approaches** (different algorithms with trade-off analysis)

**Implementation Requirements:**
- Clean, readable code with comprehensive comments
- Proper error handling and input validation
- Comprehensive unit tests with edge cases
- Performance benchmarks with different input sizes
- Documentation explaining algorithm choice and complexity analysis

**Forensic Code Review:**
Analyze the implementation for:
- Potential infinite loops or stack overflows
- Integer overflow possibilities
- Memory leaks in long-running scenarios
- Thread safety considerations (if applicable)

Provide multiple implementation variants optimized for different scenarios (memory vs speed).
```

## 🧪 Code Quality Enhancement Prompts

### Code Review Assistant

```
Act as a senior code reviewer. Perform a forensic analysis of this code:

[PASTE_CODE_HERE]

**Deep Code Review Checklist:**

**1. Correctness Analysis:**
- Does the code solve the intended problem?
- Are there logical errors or bugs?
- Do all code paths handle expected scenarios?

**2. Security Audit:**
- Input validation and sanitization
- SQL injection, XSS, CSRF vulnerabilities
- Authentication and authorization checks
- Sensitive data handling

**3. Performance Review:**
- Time and space complexity analysis
- Database query optimization
- Caching opportunities
- Inefficient loops or recursive calls

**4. Maintainability Assessment:**
- Code clarity and readability
- Proper naming conventions
- Function/class size and responsibility
- Documentation quality

**5. Architecture Compliance:**
- SOLID principles adherence
- Design pattern usage
- Dependency management
- Layer separation

**Ultrathinking Output:**
1. **Critical Issues** (must fix before deployment)
2. **Performance Concerns** (optimization opportunities)
3. **Security Vulnerabilities** (with mitigation strategies)
4. **Maintainability Improvements** (refactoring suggestions)
5. **Test Coverage Gaps** (missing test scenarios)
6. **Alternative Implementations** (better approaches)

Think harder about edge cases that might not be obvious and provide specific, actionable recommendations.
```

### Legacy Code Modernization

```
As a legacy systems expert, help modernize this code while preserving functionality:

[LEGACY_CODE_HERE]

**Modernization Context:**
- Original Language/Framework: [OLD_TECH]
- Target Language/Framework: [NEW_TECH]
- Business Constraints: [CONSTRAINTS]
- Migration Timeline: [TIMELINE]

**Forensic Legacy Analysis:**
1. **Code Archaeology** (understanding original design decisions)
2. **Dependency Mapping** (external libraries, database connections)
3. **Business Logic Extraction** (separating logic from infrastructure)
4. **Risk Assessment** (what could break during migration)

**Ultrathinking Modernization:**
1. **Incremental Migration Strategy** (minimal disruption approach)
2. **Modern Architecture Patterns** (applicable design patterns)
3. **Performance Improvements** (leveraging modern language features)
4. **Security Enhancements** (addressing legacy vulnerabilities)
5. **Testing Strategy** (ensuring behavioral compatibility)
6. **Rollback Plan** (safe deployment with quick recovery)

**Deliverables:**
1. Modernized code with equivalent functionality
2. Side-by-side comparison of old vs new
3. Migration checklist with validation steps
4. Test suite proving functional equivalence
5. Performance benchmark comparison
6. Security improvement documentation
7. Team training recommendations

Think harder about hidden dependencies and provide a comprehensive risk mitigation plan.
```

## 🔧 Framework-Specific Prompts

### React Component Generation

```
As a React expert, create a [COMPONENT_TYPE] component with advanced patterns:

**Component Specifications:**
- Purpose: [COMPONENT_PURPOSE]
- Props Interface: [EXPECTED_PROPS]
- State Management: [STATE_REQUIREMENTS]
- Styling Approach: [CSS_METHOD]
- Performance Needs: [OPTIMIZATION_REQUIREMENTS]

**Advanced React Patterns to Consider:**
1. **Component Composition** (compound components, render props, children patterns)
2. **Performance Optimization** (memo, useMemo, useCallback, lazy loading)
3. **State Management** (useState, useReducer, Context API, external state)
4. **Side Effects** (useEffect patterns, cleanup, dependency arrays)
5. **Error Boundaries** (error handling and recovery)
6. **Accessibility** (ARIA attributes, keyboard navigation, screen readers)

**Think Harder About:**
- Component reusability across different contexts
- Performance implications of re-renders
- Testing strategies (unit, integration, visual)
- Bundle size impact and code splitting opportunities

**Ultra-Comprehensive Deliverable:**
1. Complete component implementation with TypeScript
2. Custom hooks for reusable logic
3. Comprehensive test suite (Jest + React Testing Library)
4. Storybook stories for different states
5. Performance analysis and optimization notes
6. Accessibility compliance checklist
7. Usage examples and integration guide

Perform forensic analysis of potential performance bottlenecks and provide prevention strategies.
```

## 🚀 Advanced Techniques

### Multi-Language Code Generation

```
As a polyglot programmer, implement [FUNCTIONALITY] in multiple languages for comparison:

**Languages to Implement:**
- [LANGUAGE_1]: [SPECIFIC_USE_CASE]
- [LANGUAGE_2]: [SPECIFIC_USE_CASE]  
- [LANGUAGE_3]: [SPECIFIC_USE_CASE]

**Ultrathinking Comparative Analysis:**
1. **Idiomatic Patterns** (language-specific best practices)
2. **Performance Characteristics** (runtime, memory usage)
3. **Ecosystem Integration** (libraries, frameworks, tools)
4. **Maintainability Factors** (code clarity, team expertise)
5. **Deployment Considerations** (build process, runtime requirements)

**Forensic Language Analysis:**
- Which language best fits the problem domain?
- What are the long-term maintenance implications?
- How do testing approaches differ between languages?
- What are the performance trade-offs?

For each implementation, provide:
1. Idiomatic code following language conventions
2. Comprehensive error handling
3. Unit tests using language-specific frameworks
4. Performance benchmarks
5. Deployment and build instructions
6. Language-specific best practices documentation

Think harder about the strategic implications of language choice for this specific use case.
```

---

## 📝 Usage Tips

1. **Customize Context**: Always replace bracketed placeholders with your specific requirements
2. **Iterate and Refine**: Start with basic prompts, then add complexity based on results
3. **Validate Outputs**: Always review AI-generated code through proper code review processes
4. **Document Decisions**: Save successful prompt variations for team reuse
5. **Follow Governance**: Ensure all generated code follows your organization's AI usage policies

**Next Steps**: Check out [Debugging Prompts](./debugging.md) and [Architecture Prompts](./architecture.md) for more specialized use cases.