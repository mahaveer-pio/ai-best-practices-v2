---
title: Refactoring Prompts
audience: Developers, Software Architects, Technical Leads
purpose: AI-assisted code refactoring and improvement
---

# Refactoring Prompts

This collection provides comprehensive prompts for AI-assisted code refactoring, performance optimization, code quality improvements, and technical debt reduction. These prompts help maintain and improve existing codebases systematically.

## Code Quality Improvement

### General Code Refactoring

```
Refactor the following code to improve quality, maintainability, and performance:

**Code to Refactor:**
```{LANGUAGE}
{PASTE_CODE_TO_REFACTOR}
```

**Refactoring Context:**
- Programming language: {LANGUAGE_AND_VERSION}
- Framework/library context: {FRAMEWORK_SPECIFICS}
- Codebase patterns: {EXISTING_CODE_PATTERNS}
- Performance requirements: {PERFORMANCE_CONSTRAINTS}
- Maintainability goals: {MAINTAINABILITY_PRIORITIES}

**Refactoring Objectives:**
1. **Code Clarity** - Improve readability and understanding
2. **Maintainability** - Easier modification and extension
3. **Performance** - Optimize for speed and memory usage
4. **Testing** - Improve testability and test coverage
5. **Standards Compliance** - Follow language and framework best practices

**Specific Improvements Needed:**
- Code smells to address: {IDENTIFY_CODE_SMELLS}
- Design patterns to apply: {SUGGESTED_DESIGN_PATTERNS}
- Performance bottlenecks: {KNOWN_PERFORMANCE_ISSUES}
- Testing challenges: {TESTING_IMPROVEMENT_AREAS}
- Documentation gaps: {DOCUMENTATION_NEEDS}

**Quality Metrics:**
- Cyclomatic complexity: {COMPLEXITY_REDUCTION_GOALS}
- Code duplication: {DUPLICATION_ELIMINATION_TARGETS}
- Function/method size: {SIZE_REDUCTION_OBJECTIVES}
- Coupling/cohesion: {COUPLING_COHESION_IMPROVEMENTS}
- Test coverage: {COVERAGE_IMPROVEMENT_GOALS}

**Constraints:**
- Backward compatibility: {COMPATIBILITY_REQUIREMENTS}
- API stability: {API_CHANGE_LIMITATIONS}
- Performance impact: {PERFORMANCE_CHANGE_TOLERANCE}
- Testing requirements: {TESTING_STRATEGY_CONSTRAINTS}
- Timeline: {REFACTORING_TIME_CONSTRAINTS}

**Deliverables:**
1. Refactored code with improved structure
2. Explanation of changes made and rationale
3. Migration/upgrade guide if API changes
4. Updated or new unit tests
5. Performance impact analysis
6. Documentation updates

**Please add the AI comment: // [AI-Generated-{TOOL}] - Refactored {CODE_COMPONENT_NAME} for improved quality**

Codebase context and existing patterns: {RELATED_CODE_EXAMPLES}
```

### Technical Debt Reduction

```
Analyze and address technical debt in {SYSTEM_COMPONENT_NAME} with systematic improvements:

**Technical Debt Assessment:**
- Component scope: {COMPONENT_BOUNDARIES}
- Known issues: {EXISTING_TECHNICAL_DEBT_LIST}
- Impact assessment: {BUSINESS_IMPACT_OF_DEBT}
- Root causes: {WHY_DEBT_ACCUMULATED}
- Priority level: {DEBT_PRIORITY_CLASSIFICATION}

**Debt Categories:**
1. **Code Debt** - Poor code quality, duplications, violations
2. **Design Debt** - Architectural shortcuts and compromises
3. **Documentation Debt** - Missing or outdated documentation
4. **Test Debt** - Inadequate test coverage or quality
5. **Infrastructure Debt** - Outdated tools, processes, dependencies

**Specific Issues to Address:**
- Code quality issues: {CODE_QUALITY_PROBLEMS}
- Architecture violations: {ARCHITECTURAL_DEBT}
- Performance problems: {PERFORMANCE_DEBT}
- Security vulnerabilities: {SECURITY_DEBT}
- Maintainability challenges: {MAINTENANCE_DEBT}

**Refactoring Strategy:**
- Incremental approach: {STEP_BY_STEP_PLAN}
- Risk mitigation: {RISK_MANAGEMENT_APPROACH}
- Testing strategy: {TESTING_DURING_REFACTORING}
- Rollback plan: {ROLLBACK_STRATEGY}
- Team coordination: {TEAM_COLLABORATION_APPROACH}

**Success Metrics:**
- Quality improvements: {QUALITY_METRICS_TO_TRACK}
- Performance gains: {PERFORMANCE_IMPROVEMENT_TARGETS}
- Maintainability measures: {MAINTAINABILITY_METRICS}
- Developer productivity: {PRODUCTIVITY_IMPROVEMENT_GOALS}
- Bug reduction: {DEFECT_REDUCTION_TARGETS}

**Implementation Plan:**
- Phase 1: {IMMEDIATE_CRITICAL_FIXES}
- Phase 2: {STRUCTURAL_IMPROVEMENTS}
- Phase 3: {OPTIMIZATION_AND_ENHANCEMENT}
- Ongoing: {CONTINUOUS_IMPROVEMENT_PROCESS}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Technical debt reduction for {SYSTEM_COMPONENT_NAME}**

Current system architecture and constraints: {SYSTEM_CONTEXT}
```

---

## Performance Optimization

### Performance Refactoring

```
Optimize the performance of the following code while maintaining functionality:

**Code to Optimize:**
```{LANGUAGE}
{PASTE_CODE_TO_OPTIMIZE}
```

**Performance Context:**
- Current performance metrics: {CURRENT_PERFORMANCE_BASELINE}
- Performance requirements: {TARGET_PERFORMANCE_GOALS}
- Usage patterns: {HOW_CODE_IS_USED}
- Scalability needs: {SCALING_REQUIREMENTS}
- Resource constraints: {MEMORY_CPU_CONSTRAINTS}

**Optimization Areas:**
1. **Algorithm Efficiency** - Better algorithmic approaches
2. **Data Structures** - More efficient data organization
3. **Memory Management** - Reduced memory usage and leaks
4. **I/O Operations** - Faster data access and processing
5. **Concurrency** - Parallel and asynchronous processing

**Specific Optimizations:**
- Time complexity: {CURRENT_VS_TARGET_COMPLEXITY}
- Memory usage: {MEMORY_OPTIMIZATION_GOALS}
- Database queries: {QUERY_OPTIMIZATION_NEEDS}
- Network calls: {NETWORK_EFFICIENCY_IMPROVEMENTS}
- Caching opportunities: {CACHING_STRATEGY_NEEDS}

**Performance Measurement:**
- Benchmarking approach: {PERFORMANCE_TESTING_STRATEGY}
- Metrics to track: {KEY_PERFORMANCE_INDICATORS}
- Profiling tools: {PROFILING_TOOL_PREFERENCES}
- Test scenarios: {PERFORMANCE_TEST_CASES}
- Acceptance criteria: {PERFORMANCE_ACCEPTANCE_THRESHOLDS}

**Optimization Constraints:**
- Code readability: {READABILITY_VS_PERFORMANCE_BALANCE}
- Maintainability: {MAINTENANCE_COMPLEXITY_TOLERANCE}
- Memory usage: {MEMORY_USAGE_LIMITS}
- Compatibility: {BACKWARD_COMPATIBILITY_REQUIREMENTS}
- Development time: {OPTIMIZATION_TIME_BUDGET}

**Deliverables:**
1. Optimized code with performance improvements
2. Performance analysis and benchmarks
3. Explanation of optimization techniques used
4. Updated tests including performance tests
5. Documentation of performance characteristics
6. Monitoring and profiling recommendations

**Please add the AI comment: // [AI-Generated-{TOOL}] - Performance optimized {CODE_COMPONENT_NAME}**

Performance bottleneck analysis: {PROFILING_RESULTS_OR_KNOWN_ISSUES}
```

### Database Query Optimization

```
Optimize database queries and data access patterns for {APPLICATION_CONTEXT}:

**Database Context:**
- Database system: {MYSQL_POSTGRESQL_MONGODB_DESCRIPTION}
- Database size: {DATA_VOLUME_CHARACTERISTICS}
- Query patterns: {COMMON_QUERY_TYPES}
- Performance issues: {KNOWN_PERFORMANCE_PROBLEMS}
- Scaling requirements: {SCALING_EXPECTATIONS}

**Current Queries to Optimize:**
```sql
{PASTE_SLOW_QUERIES_HERE}
```

**Optimization Areas:**
1. **Query Structure** - Improve SQL query efficiency
2. **Indexing Strategy** - Optimize database indexes
3. **Data Access Patterns** - Reduce database round trips
4. **Caching** - Implement query result caching
5. **Connection Management** - Optimize connection pooling

**Performance Analysis:**
- Current query performance: {CURRENT_QUERY_EXECUTION_TIMES}
- Resource utilization: {CPU_MEMORY_IO_USAGE}
- Bottleneck identification: {IDENTIFIED_BOTTLENECKS}
- Scaling limitations: {SCALING_BOTTLENECKS}
- User impact: {USER_EXPERIENCE_IMPACT}

**Optimization Strategies:**
- Query rewriting: {QUERY_IMPROVEMENT_OPPORTUNITIES}
- Index optimization: {INDEXING_STRATEGY_IMPROVEMENTS}
- Data model changes: {SCHEMA_OPTIMIZATION_OPTIONS}
- Caching layers: {CACHING_IMPLEMENTATION_STRATEGY}
- Read replicas: {READ_SCALING_CONSIDERATIONS}

**Implementation Considerations:**
- Migration strategy: {SAFE_MIGRATION_APPROACH}
- Rollback plan: {ROLLBACK_STRATEGY}
- Testing approach: {TESTING_OPTIMIZED_QUERIES}
- Monitoring: {PERFORMANCE_MONITORING_SETUP}
- Impact assessment: {BUSINESS_IMPACT_EVALUATION}

**Deliverables:**
1. Optimized queries with performance improvements
2. Indexing recommendations and implementation
3. Data access pattern improvements
4. Caching strategy and implementation
5. Performance benchmarks and analysis
6. Migration and deployment plan
7. Monitoring and alerting setup

**Please add the AI comment: -- [AI-Generated-{TOOL}] - Database query optimization for {APPLICATION_CONTEXT}**

Database schema and current performance metrics: {DATABASE_CONTEXT_INFO}
```

---

## Design Pattern Implementation

### Design Pattern Refactoring

```
Refactor the following code to implement appropriate design patterns for better architecture:

**Code to Refactor:**
```{LANGUAGE}
{PASTE_CODE_FOR_PATTERN_IMPLEMENTATION}
```

**Refactoring Context:**
- Current architecture: {CURRENT_CODE_ARCHITECTURE}
- Identified problems: {ARCHITECTURAL_PROBLEMS}
- Design goals: {DESIRED_ARCHITECTURAL_QUALITIES}
- Team familiarity: {TEAM_PATTERN_KNOWLEDGE}
- Future requirements: {ANTICIPATED_CHANGES}

**Pattern Analysis:**
- Applicable patterns: {SUGGESTED_DESIGN_PATTERNS}
- Pattern benefits: {WHY_THESE_PATTERNS_HELP}
- Implementation complexity: {PATTERN_IMPLEMENTATION_EFFORT}
- Trade-offs: {PATTERN_PROS_AND_CONS}
- Alternative approaches: {ALTERNATIVE_SOLUTIONS}

**Specific Patterns to Implement:**
1. **Creational Patterns** - {FACTORY_SINGLETON_BUILDER_NEEDS}
2. **Structural Patterns** - {ADAPTER_DECORATOR_FACADE_NEEDS}
3. **Behavioral Patterns** - {OBSERVER_STRATEGY_COMMAND_NEEDS}
4. **Architectural Patterns** - {MVC_MVP_MVVM_LAYERED_NEEDS}

**Implementation Requirements:**
- Code maintainability: {MAINTAINABILITY_PRIORITIES}
- Extensibility needs: {FUTURE_EXTENSION_REQUIREMENTS}
- Performance considerations: {PERFORMANCE_IMPACT_CONSTRAINTS}
- Testing improvements: {TESTABILITY_IMPROVEMENTS}
- Team understanding: {DOCUMENTATION_TRAINING_NEEDS}

**Quality Assurance:**
- Pattern correctness: {PATTERN_IMPLEMENTATION_VALIDATION}
- Code review criteria: {REVIEW_CHECKLIST_FOR_PATTERNS}
- Testing strategy: {TESTING_PATTERN_IMPLEMENTATIONS}
- Documentation needs: {PATTERN_DOCUMENTATION_REQUIREMENTS}
- Knowledge sharing: {TEAM_KNOWLEDGE_TRANSFER}

**Migration Strategy:**
- Implementation phases: {PHASED_PATTERN_IMPLEMENTATION}
- Backward compatibility: {COMPATIBILITY_MAINTENANCE}
- Risk mitigation: {RISK_MANAGEMENT_APPROACH}
- Testing approach: {COMPREHENSIVE_TESTING_STRATEGY}
- Rollback plan: {PATTERN_ROLLBACK_STRATEGY}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Implemented {PATTERN_NAMES} design patterns**

Current codebase patterns and architecture: {EXISTING_ARCHITECTURE_CONTEXT}
```

### Legacy Code Modernization

```
Modernize legacy code in {LEGACY_SYSTEM_NAME} to current standards and practices:

**Legacy System Context:**
- System age: {SYSTEM_AGE_AND_HISTORY}
- Technology stack: {CURRENT_LEGACY_TECHNOLOGIES}
- Business criticality: {BUSINESS_IMPACT_AND_IMPORTANCE}
- Known issues: {LEGACY_SYSTEM_PROBLEMS}
- Maintenance challenges: {CURRENT_MAINTENANCE_DIFFICULTIES}

**Modernization Goals:**
- Technology updates: {TARGET_MODERN_TECHNOLOGIES}
- Architecture improvements: {ARCHITECTURAL_MODERNIZATION_GOALS}
- Performance gains: {PERFORMANCE_IMPROVEMENT_TARGETS}
- Maintainability: {MAINTAINABILITY_IMPROVEMENT_OBJECTIVES}
- Security enhancements: {SECURITY_MODERNIZATION_NEEDS}

**Legacy Code to Modernize:**
```{LEGACY_LANGUAGE}
{PASTE_LEGACY_CODE_HERE}
```

**Modernization Strategy:**
1. **Incremental Refactoring** - Step-by-step improvements
2. **Strangler Fig Pattern** - Gradually replace legacy components
3. **Anti-Corruption Layer** - Isolate legacy system interactions
4. **Testing Harness** - Comprehensive test coverage before changes
5. **Feature Toggles** - Safe deployment of modernized components

**Technical Improvements:**
- Language/framework updates: {LANGUAGE_FRAMEWORK_UPGRADES}
- API modernization: {API_IMPROVEMENT_STRATEGY}
- Database modernization: {DATABASE_UPGRADE_APPROACH}
- Security updates: {SECURITY_ENHANCEMENT_PLAN}
- Performance optimization: {PERFORMANCE_MODERNIZATION}

**Risk Management:**
- Business continuity: {BUSINESS_CONTINUITY_APPROACH}
- Data integrity: {DATA_PROTECTION_STRATEGY}
- Rollback planning: {ROLLBACK_AND_RECOVERY_PLAN}
- Stakeholder communication: {STAKEHOLDER_MANAGEMENT}
- Timeline management: {PROJECT_TIMELINE_APPROACH}

**Implementation Plan:**
- Phase 1: {ASSESSMENT_AND_PREPARATION}
- Phase 2: {INFRASTRUCTURE_MODERNIZATION}
- Phase 3: {APPLICATION_MODERNIZATION}
- Phase 4: {OPTIMIZATION_AND_CLEANUP}
- Ongoing: {CONTINUOUS_MODERNIZATION_PROCESS}

**Quality Assurance:**
- Testing strategy: {COMPREHENSIVE_TESTING_APPROACH}
- Performance validation: {PERFORMANCE_TESTING_STRATEGY}
- Security assessment: {SECURITY_VALIDATION_APPROACH}
- User acceptance: {USER_VALIDATION_PROCESS}
- Documentation updates: {DOCUMENTATION_MODERNIZATION}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Modernized legacy {LEGACY_SYSTEM_COMPONENT}**

Legacy system architecture and dependencies: {LEGACY_SYSTEM_ARCHITECTURE}
```

---

## Code Structure Improvements

### Method and Function Refactoring

```
Refactor the following methods/functions to improve structure, readability, and maintainability:

**Code to Refactor:**
```{LANGUAGE}
{PASTE_METHODS_TO_REFACTOR}
```

**Refactoring Objectives:**
- Function size reduction: {TARGET_FUNCTION_SIZE_LIMITS}
- Single Responsibility Principle: {SRP_COMPLIANCE_GOALS}
- Parameter optimization: {PARAMETER_COUNT_REDUCTION}
- Return value clarification: {RETURN_VALUE_IMPROVEMENTS}
- Error handling improvements: {ERROR_HANDLING_ENHANCEMENT}

**Code Quality Issues:**
- Long methods: {METHODS_OVER_SIZE_LIMIT}
- Complex conditionals: {COMPLEX_LOGIC_SIMPLIFICATION}
- Code duplication: {DUPLICATION_ELIMINATION}
- Poor naming: {NAMING_IMPROVEMENTS_NEEDED}
- Missing error handling: {ERROR_HANDLING_GAPS}

**Refactoring Techniques:**
1. **Extract Method** - Break down long methods
2. **Introduce Parameter Object** - Group related parameters
3. **Replace Conditional with Polymorphism** - Eliminate complex conditionals
4. **Extract Class** - Create focused, cohesive classes
5. **Rename Method/Variable** - Improve naming clarity

**Quality Improvements:**
- Readability: {READABILITY_ENHANCEMENT_GOALS}
- Testability: {TESTING_IMPROVEMENT_OBJECTIVES}
- Reusability: {REUSABILITY_ENHANCEMENT_TARGETS}
- Maintainability: {MAINTENANCE_IMPROVEMENT_GOALS}
- Performance: {PERFORMANCE_CONSIDERATION_BALANCE}

**Testing Strategy:**
- Test preservation: {EXISTING_TEST_MAINTENANCE}
- New test requirements: {ADDITIONAL_TESTING_NEEDS}
- Test refactoring: {TEST_CODE_IMPROVEMENTS}
- Coverage improvements: {COVERAGE_ENHANCEMENT_GOALS}
- Edge case testing: {EDGE_CASE_TESTING_STRATEGY}

**Documentation Updates:**
- Method documentation: {DOCUMENTATION_IMPROVEMENT_NEEDS}
- Code comments: {INLINE_COMMENT_STRATEGY}
- API documentation: {API_DOCUMENTATION_UPDATES}
- Usage examples: {EXAMPLE_CODE_UPDATES}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Refactored methods for improved structure**

Method usage context and calling patterns: {METHOD_USAGE_ANALYSIS}
```

### Class and Module Restructuring

```
Restructure classes and modules in {COMPONENT_NAME} to improve organization and maintainability:

**Current Structure Analysis:**
- Class responsibilities: {CURRENT_CLASS_RESPONSIBILITIES}
- Module organization: {CURRENT_MODULE_STRUCTURE}
- Dependency relationships: {CURRENT_DEPENDENCIES}
- Coupling issues: {HIGH_COUPLING_PROBLEMS}
- Cohesion problems: {LOW_COHESION_ISSUES}

**Code to Restructure:**
```{LANGUAGE}
{PASTE_CLASSES_MODULES_TO_RESTRUCTURE}
```

**Restructuring Objectives:**
1. **Single Responsibility** - Each class/module has one clear purpose
2. **High Cohesion** - Related functionality grouped together
3. **Loose Coupling** - Minimal dependencies between components
4. **Clear Interfaces** - Well-defined public APIs
5. **Logical Organization** - Intuitive structure and navigation

**SOLID Principles Application:**
- Single Responsibility: {SRP_COMPLIANCE_IMPROVEMENTS}
- Open/Closed Principle: {OCP_IMPLEMENTATION_STRATEGY}
- Liskov Substitution: {LSP_ADHERENCE_REQUIREMENTS}
- Interface Segregation: {ISP_INTERFACE_DESIGN}
- Dependency Inversion: {DIP_DEPENDENCY_MANAGEMENT}

**Refactoring Techniques:**
- Extract Class: {CLASS_EXTRACTION_OPPORTUNITIES}
- Move Method: {METHOD_RELOCATION_NEEDS}
- Extract Interface: {INTERFACE_ABSTRACTION_NEEDS}
- Introduce Delegation: {DELEGATION_IMPLEMENTATION}
- Replace Inheritance with Composition: {COMPOSITION_OPPORTUNITIES}

**Architectural Improvements:**
- Layer separation: {LAYERED_ARCHITECTURE_IMPROVEMENTS}
- Module boundaries: {MODULE_BOUNDARY_CLARIFICATION}
- Package organization: {PACKAGE_STRUCTURE_OPTIMIZATION}
- Namespace design: {NAMESPACE_ORGANIZATION}
- Configuration management: {CONFIG_SEPARATION_STRATEGY}

**Migration Strategy:**
- Backward compatibility: {API_COMPATIBILITY_MAINTENANCE}
- Gradual transition: {INCREMENTAL_RESTRUCTURING_PLAN}
- Deprecation strategy: {OLD_API_DEPRECATION_TIMELINE}
- Documentation updates: {RESTRUCTURING_DOCUMENTATION}
- Team communication: {CHANGE_COMMUNICATION_STRATEGY}

**Quality Validation:**
- Unit test updates: {TEST_RESTRUCTURING_REQUIREMENTS}
- Integration testing: {INTEGRATION_TEST_UPDATES}
- Performance impact: {PERFORMANCE_IMPACT_ANALYSIS}
- Code review process: {RESTRUCTURING_REVIEW_CRITERIA}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Restructured classes/modules for {COMPONENT_NAME}**

Current architecture and design constraints: {ARCHITECTURE_CONTEXT}
```

---

## Error Handling and Resilience

### Error Handling Improvement

```
Improve error handling and resilience in {SYSTEM_COMPONENT_NAME} with comprehensive error management:

**Current Error Handling Analysis:**
- Error handling gaps: {MISSING_ERROR_HANDLING_AREAS}
- Inconsistent patterns: {ERROR_HANDLING_INCONSISTENCIES}
- Poor error messages: {ERROR_MESSAGE_IMPROVEMENT_NEEDS}
- Exception propagation issues: {EXCEPTION_HANDLING_PROBLEMS}
- Recovery mechanisms: {ERROR_RECOVERY_GAPS}

**Code to Improve:**
```{LANGUAGE}
{PASTE_CODE_WITH_ERROR_HANDLING_ISSUES}
```

**Error Handling Strategy:**
1. **Fail Fast** - Immediate error detection and reporting
2. **Graceful Degradation** - Partial functionality when possible
3. **Circuit Breaker** - Prevent cascade failures
4. **Retry Logic** - Automatic recovery from transient failures
5. **Bulkhead Pattern** - Isolate failure domains

**Error Categories:**
- Input validation errors: {INPUT_VALIDATION_ERROR_HANDLING}
- Business logic errors: {BUSINESS_RULE_ERROR_MANAGEMENT}
- External service failures: {EXTERNAL_SERVICE_ERROR_HANDLING}
- Infrastructure errors: {INFRASTRUCTURE_ERROR_MANAGEMENT}
- Unexpected errors: {UNEXPECTED_ERROR_HANDLING}

**Resilience Patterns:**
- Timeout management: {TIMEOUT_STRATEGY_IMPLEMENTATION}
- Retry with backoff: {RETRY_LOGIC_IMPLEMENTATION}
- Circuit breaker: {CIRCUIT_BREAKER_IMPLEMENTATION}
- Bulkhead isolation: {RESOURCE_ISOLATION_STRATEGY}
- Fallback mechanisms: {FALLBACK_IMPLEMENTATION}

**Error Communication:**
- User-friendly messages: {USER_ERROR_MESSAGE_STRATEGY}
- Developer debugging info: {DEBUGGING_INFORMATION_STRATEGY}
- Logging and monitoring: {ERROR_LOGGING_STRATEGY}
- Alert escalation: {ERROR_ALERTING_STRATEGY}
- Incident tracking: {INCIDENT_MANAGEMENT_INTEGRATION}

**Testing Strategy:**
- Error scenario testing: {ERROR_CONDITION_TESTING}
- Chaos engineering: {CHAOS_TESTING_APPROACH}
- Fault injection: {FAULT_INJECTION_TESTING}
- Recovery testing: {RECOVERY_MECHANISM_TESTING}
- End-to-end resilience: {E2E_RESILIENCE_TESTING}

**Monitoring and Observability:**
- Error rate monitoring: {ERROR_RATE_MONITORING_SETUP}
- Error pattern analysis: {ERROR_PATTERN_DETECTION}
- Performance impact: {ERROR_HANDLING_PERFORMANCE_MONITORING}
- Recovery time tracking: {RECOVERY_TIME_METRICS}
- SLA compliance: {SLA_ERROR_BUDGET_MANAGEMENT}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Enhanced error handling for {SYSTEM_COMPONENT_NAME}**

Current system architecture and failure modes: {SYSTEM_FAILURE_ANALYSIS}
```

---

## Usage Guidelines

### Effective Refactoring Practices

1. **Start with tests** - Ensure comprehensive test coverage before refactoring
2. **Make small changes** - Incremental improvements reduce risk
3. **Preserve behavior** - Maintain existing functionality during refactoring
4. **Measure impact** - Track performance and quality metrics
5. **Document changes** - Explain refactoring decisions and rationale

### Refactoring Safety Checklist

Before implementing refactored code:
- [ ] Comprehensive test coverage exists
- [ ] Performance impact is measured and acceptable
- [ ] Backward compatibility is maintained where required
- [ ] Code review has been conducted
- [ ] Documentation is updated
- [ ] Team is informed of changes
- [ ] Rollback plan is available
- [ ] Monitoring is in place for new issues

### Quality Metrics to Track

- **Code Quality**: Cyclomatic complexity, code coverage, duplication
- **Performance**: Response times, memory usage, throughput
- **Maintainability**: Code readability, documentation coverage
- **Reliability**: Error rates, system stability, recovery times
- **Team Productivity**: Development velocity, defect rates

---

## Contributing Refactoring Prompts

When adding new refactoring prompts:

1. **Focus on specific refactoring types** (e.g., database refactoring, UI refactoring)
2. **Include comprehensive quality criteria**
3. **Address both technical and business considerations**
4. **Provide clear success metrics**
5. **Consider team and organizational constraints**
6. **Include risk mitigation strategies**

Effective refactoring improves code quality while maintaining functionality and minimizing risk. These prompts help approach refactoring systematically and safely.