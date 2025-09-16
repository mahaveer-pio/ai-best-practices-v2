# 🔄 Advanced Refactoring Prompts for Developers

**Master code refactoring with AI assistance using proven prompting techniques**

## Core Refactoring Prompts

### 1. **Legacy Code Modernization**

```markdown
**Context**: I have legacy code that needs modernization following current best practices.

**Legacy Code**:
[PASTE_YOUR_LEGACY_CODE]

**Requirements**:
- Modernize to [CURRENT_LANGUAGE_VERSION] (e.g., ES2023, Python 3.11, Java 17)
- Apply SOLID principles where applicable
- Improve error handling and logging
- Add type safety (TypeScript, type hints, etc.)
- Maintain backward compatibility where specified
- Include unit tests for refactored components

**Constraints**:
- [BUSINESS_CONSTRAINTS] (e.g., can't change API signatures)
- [TECHNICAL_CONSTRAINTS] (e.g., must support specific browsers)
- [TIMELINE_CONSTRAINTS] (e.g., incremental migration preferred)

Please provide:
1. Step-by-step refactoring plan with priorities
2. Modernized code with clear improvements highlighted
3. Migration strategy for gradual adoption
4. Test cases covering the refactored functionality
5. Documentation of breaking changes (if any)
```

### 2. **Performance Optimization**

```markdown
**Scenario**: Analyze this code for performance bottlenecks and suggest optimizations.

**Current Implementation**:
[PASTE_PERFORMANCE_CRITICAL_CODE]

**Performance Context**:
- Current metrics: [LATENCY/THROUGHPUT/MEMORY_USAGE]
- Target metrics: [DESIRED_PERFORMANCE_GOALS]
- Usage patterns: [REQUEST_VOLUME/DATA_SIZE/CONCURRENCY]
- Environment: [PRODUCTION_CONSTRAINTS]

**Analysis Request**:
1. **Bottleneck Identification**:
   - Profile the code and identify performance hotspots
   - Analyze time/space complexity
   - Review algorithm choices and data structures

2. **Optimization Strategies**:
   - Suggest algorithmic improvements
   - Recommend caching strategies
   - Identify opportunities for parallelization
   - Propose memory optimization techniques

3. **Implementation Plan**:
   - Prioritized list of optimizations by impact/effort
   - Refactored code with performance improvements
   - Benchmarking strategy to measure improvements
   - Monitoring and alerting recommendations

**Output Format**: Provide before/after code comparisons with performance impact estimates.
```

### 3. **Code Smell Elimination**

```markdown
**Task**: Identify and eliminate code smells in the following codebase section.

**Code Under Review**:
[PASTE_CODE_WITH_POTENTIAL_ISSUES]

**Code Quality Assessment**:
Please analyze for these common code smells:
- Long methods/functions (>50 lines)
- Large classes (>500 lines)
- Duplicate code patterns
- Deep nesting and complex conditionals
- God objects and tight coupling
- Magic numbers and unclear naming
- Violations of Single Responsibility Principle

**Refactoring Approach**:
For each identified smell, provide:
1. **Problem Description**: What makes this code problematic?
2. **Impact Analysis**: How does this affect maintainability/testing/performance?
3. **Refactoring Strategy**: Which refactoring pattern to apply?
4. **Improved Implementation**: Clean, well-structured alternative
5. **Validation**: How to verify the refactoring is successful?

**Quality Metrics**:
- Cyclomatic complexity reduction
- Improved test coverage potential
- Enhanced readability scores
- Reduced coupling measurements
```

### 4. **Architecture Pattern Implementation**

```markdown
**Objective**: Refactor this code to implement [SPECIFIC_PATTERN] architectural pattern.

**Current Code Structure**:
[PASTE_EXISTING_ARCHITECTURE]

**Target Pattern**: [MVC/MVP/MVVM/Clean Architecture/Hexagonal/etc.]

**Refactoring Scope**:
1. **Structural Analysis**:
   - Map current code to pattern components
   - Identify misaligned responsibilities
   - Highlight coupling and dependency issues

2. **Pattern Implementation**:
   - Design the target architecture
   - Define clear interfaces and contracts
   - Establish data flow and communication patterns
   - Implement separation of concerns

3. **Migration Strategy**:
   - Phase-by-phase refactoring plan
   - Maintain functionality during transition
   - Risk mitigation for large changes
   - Testing strategy at each phase

**Deliverables**:
- Architecture diagrams (before/after)
- Refactored code following the pattern
- Interface definitions and contracts
- Migration guide with rollback options
- Updated documentation and team guidelines
```

## Specialized Refactoring Scenarios

### 5. **Database Query Optimization**

```markdown
**Database Performance Issue**: Optimize these slow database queries and related code.

**Current Queries and Code**:
[PASTE_SLOW_QUERIES_AND_ORM_CODE]

**Performance Context**:
- Database: [PostgreSQL/MySQL/MongoDB/etc.]
- Dataset size: [APPROXIMATE_RECORD_COUNTS]
- Current query performance: [EXECUTION_TIMES]
- Acceptable performance targets: [TARGET_RESPONSE_TIMES]

**Optimization Areas**:
1. **Query Analysis**:
   - Identify missing indexes
   - Analyze query execution plans
   - Detect N+1 query problems
   - Review JOIN strategies

2. **Code Refactoring**:
   - Optimize ORM usage patterns
   - Implement query batching
   - Add appropriate caching layers
   - Refactor to use database-specific features

3. **Schema Improvements**:
   - Suggest denormalization opportunities
   - Recommend index strategies
   - Identify partitioning possibilities
   - Review data types and constraints

**Expected Output**:
- Optimized queries with performance estimates
- Refactored application code
- Index creation scripts
- Performance testing recommendations
```

### 6. **API Design Refactoring**

```markdown
**API Modernization**: Refactor this API to follow RESTful best practices and improve developer experience.

**Current API Implementation**:
[PASTE_API_CODE_AND_ENDPOINTS]

**Current Issues**:
- [INCONSISTENT_NAMING/POOR_HTTP_METHOD_USAGE/etc.]
- [VERSIONING_PROBLEMS/DOCUMENTATION_GAPS/etc.]
- [PERFORMANCE_ISSUES/SECURITY_CONCERNS/etc.]

**Refactoring Goals**:
1. **RESTful Design**:
   - Consistent resource naming and URI structure
   - Proper HTTP method usage (GET, POST, PUT, DELETE, PATCH)
   - Appropriate HTTP status codes
   - Clear request/response contracts

2. **Developer Experience**:
   - Comprehensive API documentation (OpenAPI/Swagger)
   - Consistent error response format
   - Pagination and filtering standards
   - Rate limiting and throttling

3. **API Evolution**:
   - Versioning strategy (URL/header/content negotiation)
   - Backward compatibility plan
   - Deprecation guidelines
   - Migration support for consumers

**Implementation Plan**:
- Refactored API endpoints with improved design
- Updated documentation and examples
- Migration guide for API consumers
- Testing strategy for API changes
```

## Advanced Refactoring Techniques

### 7. **Microservices Extraction**

```markdown
**Monolith Decomposition**: Extract a microservice from this monolithic code section.

**Monolithic Code Section**:
[PASTE_CODE_SECTION_FOR_EXTRACTION]

**Service Boundary Definition**:
- Business domain: [SPECIFIC_BUSINESS_CAPABILITY]
- Data dependencies: [RELATED_DATA_ENTITIES]
- Integration points: [EXTERNAL_SERVICE_INTERACTIONS]
- Team ownership: [RESPONSIBLE_TEAM]

**Extraction Strategy**:
1. **Boundary Analysis**:
   - Identify service responsibilities
   - Map data ownership and relationships
   - Define service interfaces and contracts
   - Analyze cross-cutting concerns

2. **Refactoring Approach**:
   - Strangler Fig pattern implementation
   - Database decomposition strategy
   - Event-driven communication design
   - Service mesh integration

3. **Implementation Plan**:
   - Phase-by-phase extraction timeline
   - Data migration strategy
   - Testing approach for distributed system
   - Monitoring and observability setup

**Deliverables**:
- Extracted microservice code
- API contracts and service interfaces
- Database migration scripts
- Deployment and infrastructure code
- Testing and monitoring setup
```

### 8. **Framework Migration**

```markdown
**Framework Upgrade/Migration**: Migrate this codebase from [OLD_FRAMEWORK] to [NEW_FRAMEWORK].

**Current Implementation**:
[PASTE_FRAMEWORK_SPECIFIC_CODE]

**Migration Context**:
- Source framework: [OLD_FRAMEWORK] version [VERSION]
- Target framework: [NEW_FRAMEWORK] version [VERSION]
- Migration timeline: [PREFERRED_TIMELINE]
- Business constraints: [DOWNTIME_TOLERANCE/FEATURE_FREEZE/etc.]

**Migration Approach**:
1. **Compatibility Analysis**:
   - Feature parity assessment
   - Breaking changes identification
   - Third-party dependency mapping
   - Performance impact evaluation

2. **Migration Strategy**:
   - Incremental vs. big-bang approach
   - Parallel run strategy if applicable
   - Rollback plan and risk mitigation
   - Team training and knowledge transfer

3. **Implementation Steps**:
   - Updated code following new framework patterns
   - Configuration and build system changes
   - Test suite migration and updates
   - Documentation and deployment updates

**Success Criteria**:
- Functional parity with current system
- Performance meets or exceeds current metrics
- Team comfortable with new framework
- Comprehensive test coverage maintained
```

## Quality Assurance and Testing

### 9. **Test-Driven Refactoring**

```markdown
**TDD Refactoring**: Refactor this code using Test-Driven Development approach.

**Code to Refactor**:
[PASTE_CODE_NEEDING_REFACTORING]

**Current Test Coverage**:
[PASTE_EXISTING_TESTS_IF_ANY]

**TDD Refactoring Process**:
1. **Test Analysis**:
   - Assess current test coverage and quality
   - Identify missing test scenarios
   - Evaluate test reliability and maintainability

2. **Red-Green-Refactor Cycle**:
   - Write failing tests for desired behavior
   - Make minimal changes to pass tests
   - Refactor code while maintaining green tests
   - Repeat until refactoring objectives achieved

3. **Test Design**:
   - Unit tests for individual components
   - Integration tests for component interactions
   - Edge cases and error condition coverage
   - Performance and load testing considerations

**Expected Deliverables**:
- Comprehensive test suite with >90% coverage
- Refactored, clean code passing all tests
- Test documentation and maintenance guidelines
- Continuous integration setup recommendations
```

### 10. **Security-Focused Refactoring**

```markdown
**Security Hardening**: Refactor this code to eliminate security vulnerabilities and implement security best practices.

**Code Under Security Review**:
[PASTE_CODE_WITH_POTENTIAL_VULNERABILITIES]

**Security Assessment**:
Please analyze for these security issues:
- Input validation and sanitization gaps
- SQL injection vulnerabilities
- XSS (Cross-Site Scripting) risks
- Authentication and authorization flaws
- Sensitive data exposure
- Insecure cryptographic practices
- OWASP Top 10 compliance

**Security Refactoring Plan**:
1. **Vulnerability Assessment**:
   - Identify specific security risks
   - Assess potential impact and likelihood
   - Prioritize fixes by risk severity

2. **Security Implementation**:
   - Input validation and sanitization
   - Parameterized queries and ORM usage
   - Proper authentication mechanisms
   - Authorization and access control
   - Secure cryptographic implementations
   - Error handling without information leakage

3. **Security Testing**:
   - Unit tests for security functions
   - Integration tests for access control
   - Penetration testing recommendations
   - Security code review checklist

**Security Standards Compliance**:
- OWASP guidelines adherence
- Industry-specific compliance (PCI DSS, HIPAA, etc.)
- Secure coding standards implementation
- Security monitoring and logging setup
```

## Usage Tips

### **Before Starting Any Refactoring**:
1. **Create comprehensive tests** for existing functionality
2. **Document current behavior** to preserve business logic
3. **Set up version control branches** for safe experimentation
4. **Establish rollback plans** for quick recovery if needed

### **During Refactoring**:
1. **Make small, incremental changes** to reduce risk
2. **Run tests frequently** to catch regressions early
3. **Commit often** with descriptive messages
4. **Review changes carefully** before merging

### **After Refactoring**:
1. **Performance test** to ensure no degradation
2. **Update documentation** to reflect changes
3. **Train team members** on new patterns and practices
4. **Monitor production** for any unexpected issues

---

**Remember**: Always mark AI-generated refactoring suggestions with:
```
// [AI-Generated] - Refactoring suggestion for [SPECIFIC_IMPROVEMENT]
// Review required: Validate business logic and test thoroughly
```