---
title: Testing Prompts
audience: Developers, QA Engineers, Test Automation Engineers
purpose: AI-assisted test generation and testing strategy
---

# Testing Prompts

This collection provides comprehensive prompts for AI-assisted test creation, testing strategy development, and quality assurance. These prompts help generate thorough, maintainable tests that improve code quality and reliability.

## Unit Testing

### Comprehensive Unit Test Generation

```
Generate comprehensive unit tests for the following {LANGUAGE} code:

**Code to Test:**
```{LANGUAGE}
{PASTE_CODE_TO_TEST}
```

**Testing Requirements:**
- Testing framework: {TESTING_FRAMEWORK} (Jest/pytest/JUnit/xUnit/Mocha)
- Assertion library: {ASSERTION_LIBRARY} (if different from framework default)
- Mocking strategy: {MOCKING_PREFERENCE} (manual mocks/library mocks/dependency injection)
- Coverage target: {COVERAGE_PERCENTAGE}% minimum

**Test Categories to Include:**
1. **Happy Path Tests** - Normal operation scenarios
2. **Edge Case Tests** - Boundary conditions and limits
3. **Error Handling Tests** - Invalid inputs and error conditions  
4. **Integration Points** - Mock external dependencies
5. **Performance Tests** - If applicable for the function

**Specific Test Cases:**
- Valid inputs: {LIST_VALID_INPUT_SCENARIOS}
- Invalid inputs: {LIST_INVALID_INPUT_SCENARIOS}
- Edge cases: {LIST_EDGE_CASES}
- Error conditions: {LIST_ERROR_SCENARIOS}
- State changes: {LIST_STATE_CHANGE_SCENARIOS}

**Code Quality Requirements:**
- Follow AAA pattern (Arrange, Act, Assert)
- Use descriptive test names that explain the scenario
- Include setup/teardown if needed
- Add comments for complex test logic
- Group related tests using describe/test suites

**Please add the AI comment: // [AI-Generated-{TOOL}] - Unit tests for {FUNCTION_OR_CLASS_NAME}**

Example of existing test structure to follow: {PASTE_EXISTING_TEST_EXAMPLE}
```

### Test-Driven Development (TDD) Assistance

```
Help me implement Test-Driven Development for {FEATURE_NAME} with the following specification:

**Feature Requirements:**
- Functionality: {DESCRIBE_FEATURE_FUNCTIONALITY}
- Input parameters: {LIST_INPUTS_AND_TYPES}
- Expected outputs: {DESCRIBE_EXPECTED_OUTPUTS}  
- Business rules: {LIST_BUSINESS_RULES}
- Error conditions: {LIST_ERROR_CONDITIONS}

**TDD Process Request:**
1. **Red Phase** - Generate failing test cases first
2. **Green Phase** - Suggest minimal implementation to make tests pass
3. **Refactor Phase** - Recommend improvements and additional test cases

**Testing Framework:**
- Language: {PROGRAMMING_LANGUAGE}
- Test framework: {TESTING_FRAMEWORK}
- Test runner: {TEST_RUNNER_SETUP}
- Assertion style: {ASSERTION_PREFERENCE}

**Test Structure:**
- Create test file: {TEST_FILE_NAMING_CONVENTION}
- Group tests by scenario using describe blocks
- Use beforeEach/afterEach for test setup/cleanup
- Follow project naming conventions: {PROJECT_TEST_CONVENTIONS}

**Specific Scenarios to Test:**
- Primary use cases: {LIST_PRIMARY_SCENARIOS}
- Alternative flows: {LIST_ALTERNATIVE_SCENARIOS}
- Error scenarios: {LIST_ERROR_SCENARIOS}
- Performance requirements: {PERFORMANCE_CRITERIA}

**Please add the AI comment: // [AI-Generated-{TOOL}] - TDD tests for {FEATURE_NAME}**

Start with the Red phase - failing tests first, then we'll iterate through Green and Refactor phases.

Existing project structure: {DESCRIBE_CURRENT_CODE_ORGANIZATION}
```

---

## Integration Testing

### API Integration Test Generation

```
Generate integration tests for {API_NAME} API with the following specifications:

**API Details:**
- Base URL: {API_BASE_URL}
- Authentication: {AUTH_TYPE} (Bearer token/API key/OAuth)
- Endpoints to test: {LIST_ENDPOINTS_WITH_METHODS}
- Expected data formats: {REQUEST_RESPONSE_FORMATS}
- Rate limits: {RATE_LIMITING_INFO}

**Test Environment:**
- Testing framework: {TESTING_FRAMEWORK} (supertest/requests/RestAssured)
- Mock server: {MOCK_SERVER_PREFERENCE} (if needed)
- Test data management: {TEST_DATA_STRATEGY}
- Environment setup: {TEST_ENVIRONMENT_DETAILS}

**Test Categories:**
1. **Endpoint Functionality** - Each endpoint works correctly
2. **Authentication Tests** - Valid/invalid auth scenarios
3. **Request/Response Format** - Data validation and schemas
4. **Error Handling** - HTTP status codes and error responses
5. **Edge Cases** - Boundary conditions and limits

**Specific Test Scenarios:**
- CRUD operations: {LIST_CRUD_SCENARIOS}
- Authentication flows: {AUTH_TEST_SCENARIOS}
- Data validation: {VALIDATION_TEST_CASES}
- Error responses: {ERROR_RESPONSE_SCENARIOS}
- Performance tests: {RESPONSE_TIME_REQUIREMENTS}

**Test Data:**
- Valid payloads: {PROVIDE_SAMPLE_VALID_DATA}
- Invalid payloads: {PROVIDE_SAMPLE_INVALID_DATA}
- Test user accounts: {TEST_USER_SETUP}
- Cleanup strategy: {DATA_CLEANUP_APPROACH}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Integration tests for {API_NAME} API**

API documentation reference: {LINK_TO_API_DOCS}
```

### Database Integration Testing

```
Create database integration tests for {APPLICATION_NAME} with these requirements:

**Database Setup:**
- Database type: {DATABASE_TYPE} (PostgreSQL/MySQL/MongoDB/Redis)
- ORM/ODM: {ORM_FRAMEWORK} (Prisma/SQLAlchemy/Hibernate)
- Test database: {TEST_DB_SETUP} (in-memory/containerized/separate instance)
- Migration handling: {MIGRATION_STRATEGY}

**Testing Framework:**
- Language: {PROGRAMMING_LANGUAGE}
- Testing framework: {TESTING_FRAMEWORK}
- Database testing utilities: {DB_TESTING_UTILITIES}
- Transaction management: {TRANSACTION_HANDLING}

**Test Categories:**
1. **CRUD Operations** - Create, Read, Update, Delete functionality
2. **Data Integrity** - Constraints, validations, relationships
3. **Performance** - Query performance and optimization
4. **Concurrency** - Multi-user scenarios and locking
5. **Migration Tests** - Schema changes and data migrations

**Specific Test Scenarios:**
- Entity operations: {LIST_ENTITIES_TO_TEST}
- Relationship testing: {RELATIONSHIP_SCENARIOS}
- Constraint validation: {CONSTRAINT_TEST_CASES}
- Query optimization: {PERFORMANCE_TEST_QUERIES}
- Data migration: {MIGRATION_TEST_SCENARIOS}

**Test Data Management:**
- Fixtures/Factories: {TEST_DATA_GENERATION_STRATEGY}
- Seed data: {SEED_DATA_REQUIREMENTS}
- Cleanup strategy: {CLEANUP_APPROACH}
- Test isolation: {ISOLATION_STRATEGY}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Database integration tests for {APPLICATION_NAME}**

Database schema reference: {PROVIDE_SCHEMA_REFERENCE}
```

---

## End-to-End Testing

### Web Application E2E Tests

```
Generate end-to-end tests for {WEB_APPLICATION_NAME} using {E2E_FRAMEWORK}:

**Application Context:**
- Application URL: {APPLICATION_URL}
- User roles: {LIST_USER_ROLES_AND_PERMISSIONS}
- Key workflows: {LIST_CRITICAL_USER_JOURNEYS}
- Browser support: {BROWSER_COMPATIBILITY_REQUIREMENTS}
- Device support: {MOBILE_DESKTOP_TABLET_REQUIREMENTS}

**E2E Framework Setup:**
- Framework: {E2E_FRAMEWORK} (Cypress/Playwright/Selenium/Puppeteer)
- Test runner: {TEST_RUNNER_CONFIGURATION}
- Reporting: {REPORTING_REQUIREMENTS}
- CI/CD integration: {CI_CD_INTEGRATION_NEEDS}

**Test Scenarios:**
1. **User Authentication** - Login, logout, password reset
2. **Core User Journeys** - Primary application workflows  
3. **Form Interactions** - Data input, validation, submission
4. **Navigation** - Menu navigation, breadcrumbs, routing
5. **Data Display** - Lists, tables, charts, filtering
6. **Error Scenarios** - Network errors, validation errors

**Specific Workflows to Test:**
- User registration: {REGISTRATION_WORKFLOW_STEPS}
- Main feature usage: {PRIMARY_FEATURE_WORKFLOWS}
- Admin functions: {ADMIN_WORKFLOW_SCENARIOS}
- Error recovery: {ERROR_RECOVERY_SCENARIOS}
- Mobile responsiveness: {MOBILE_SPECIFIC_TESTS}

**Test Data & Environment:**
- Test user accounts: {TEST_USER_SETUP}
- Test data: {TEST_DATA_REQUIREMENTS}
- Environment URLs: {TEST_ENVIRONMENT_SETUP}
- External dependencies: {EXTERNAL_SERVICE_MOCKING}

**Quality Requirements:**
- Page load performance: {PERFORMANCE_THRESHOLDS}
- Accessibility testing: {A11Y_REQUIREMENTS}
- Cross-browser compatibility: {BROWSER_TESTING_MATRIX}
- Mobile device testing: {MOBILE_TESTING_REQUIREMENTS}

**Please add the AI comment: // [AI-Generated-{TOOL}] - E2E tests for {WEB_APPLICATION_NAME}**

Current application structure: {DESCRIBE_APP_ARCHITECTURE}
```

### Mobile App E2E Testing

```
Create end-to-end tests for {MOBILE_APP_NAME} mobile application:

**Mobile App Context:**
- Platform: {PLATFORM} (iOS/Android/React Native/Flutter/Xamarin)
- App type: {NATIVE_HYBRID_PWA}
- Key features: {LIST_PRIMARY_FEATURES}
- Device support: {DEVICE_COMPATIBILITY_REQUIREMENTS}
- OS versions: {OS_VERSION_SUPPORT}

**Testing Framework:**
- Framework: {MOBILE_TEST_FRAMEWORK} (Appium/Detox/Maestro/UI Automator)
- Device farm: {DEVICE_TESTING_STRATEGY} (real devices/emulators/cloud)
- Test runner: {TEST_EXECUTION_ENVIRONMENT}
- Reporting: {MOBILE_TEST_REPORTING}

**Test Categories:**
1. **App Lifecycle** - Install, launch, background, restore, uninstall
2. **Navigation** - Screen transitions, deep linking, tab navigation
3. **User Interactions** - Touch, swipe, pinch, device rotation
4. **Device Features** - Camera, location, notifications, permissions
5. **Performance** - Loading times, memory usage, battery impact

**Specific Test Scenarios:**
- Onboarding flow: {ONBOARDING_STEPS}
- Core functionality: {PRIMARY_FEATURE_FLOWS}
- Offline behavior: {OFFLINE_MODE_SCENARIOS}
- Push notifications: {NOTIFICATION_TEST_CASES}
- In-app purchases: {PURCHASE_FLOW_TESTING}

**Device & Platform Testing:**
- Screen sizes: {SCREEN_SIZE_TESTING_MATRIX}
- Operating systems: {OS_VERSION_TESTING}
- Device capabilities: {HARDWARE_FEATURE_TESTS}
- Network conditions: {NETWORK_SCENARIO_TESTS}
- Performance benchmarks: {PERFORMANCE_CRITERIA}

**Test Data & Setup:**
- Test accounts: {TEST_USER_CONFIGURATION}
- App builds: {TEST_BUILD_MANAGEMENT}
- Backend mocking: {API_MOCKING_STRATEGY}
- Device setup: {DEVICE_CONFIGURATION_REQUIREMENTS}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Mobile E2E tests for {MOBILE_APP_NAME}**

App architecture details: {MOBILE_APP_TECH_STACK}
```

---

## Performance Testing

### Load Testing Strategy

```
Design and generate load tests for {SYSTEM_NAME} with these performance requirements:

**System Under Test:**
- Application type: {WEB_API_MICROSERVICE_DESCRIPTION}
- Expected user load: {CONCURRENT_USERS}
- Peak traffic patterns: {TRAFFIC_PATTERN_DESCRIPTION}
- Critical endpoints: {HIGH_TRAFFIC_ENDPOINTS}
- Performance SLAs: {RESPONSE_TIME_REQUIREMENTS}

**Load Testing Framework:**
- Tool: {LOAD_TESTING_TOOL} (JMeter/K6/Artillery/Gatling)
- Test environment: {TEST_ENVIRONMENT_SPECS}
- Monitoring: {PERFORMANCE_MONITORING_TOOLS}
- Reporting: {PERFORMANCE_REPORTING_REQUIREMENTS}

**Test Scenarios:**
1. **Baseline Load** - Normal operating conditions
2. **Stress Testing** - Beyond normal capacity
3. **Spike Testing** - Sudden traffic increases
4. **Volume Testing** - Large amounts of data
5. **Endurance Testing** - Extended duration under load

**Specific Performance Tests:**
- User journey simulation: {USER_WORKFLOW_SCENARIOS}
- API endpoint testing: {API_PERFORMANCE_TESTS}
- Database performance: {DATABASE_LOAD_SCENARIOS}
- Static resource loading: {STATIC_ASSET_PERFORMANCE}
- Third-party integrations: {EXTERNAL_SERVICE_TESTS}

**Performance Metrics:**
- Response times: {RESPONSE_TIME_THRESHOLDS}
- Throughput: {REQUESTS_PER_SECOND_TARGETS}
- Error rates: {ERROR_RATE_THRESHOLDS}
- Resource utilization: {CPU_MEMORY_THRESHOLDS}
- Scalability metrics: {SCALING_PERFORMANCE_CRITERIA}

**Test Data & Environment:**
- Load test data: {TEST_DATA_VOLUME_REQUIREMENTS}
- Environment scaling: {TEST_ENVIRONMENT_SCALING}
- Network simulation: {NETWORK_CONDITIONS}
- Security considerations: {LOAD_TEST_SECURITY}

**Please add the AI comment: # [AI-Generated-{TOOL}] - Load testing strategy for {SYSTEM_NAME}**

Current performance baseline: {EXISTING_PERFORMANCE_METRICS}
```

---

## Security Testing

### Security Test Generation

```
Generate security tests for {APPLICATION_NAME} covering the following attack vectors:

**Application Context:**
- Application type: {WEB_API_MOBILE_DESCRIPTION}
- Authentication method: {AUTH_MECHANISM}
- User data handled: {DATA_SENSITIVITY_CLASSIFICATION}
- External integrations: {THIRD_PARTY_INTEGRATIONS}
- Compliance requirements: {REGULATORY_REQUIREMENTS}

**Security Testing Framework:**
- Testing approach: {AUTOMATED_MANUAL_PREFERENCE}
- Security tools: {SECURITY_TESTING_TOOLS} (OWASP ZAP/Burp/custom)
- Integration: {CI_CD_SECURITY_INTEGRATION}
- Reporting: {SECURITY_REPORTING_REQUIREMENTS}

**Security Test Categories:**
1. **Authentication Security** - Login bypass, session management
2. **Authorization Testing** - Access control, privilege escalation  
3. **Input Validation** - SQL injection, XSS, command injection
4. **Data Protection** - Encryption, sensitive data exposure
5. **API Security** - Rate limiting, API abuse, token security

**Specific Security Tests:**
- OWASP Top 10: {OWASP_VULNERABILITIES_TO_TEST}
- Input fuzzing: {INPUT_FUZZING_SCENARIOS}
- Session security: {SESSION_SECURITY_TESTS}
- Data validation: {DATA_VALIDATION_SECURITY_TESTS}
- Infrastructure security: {INFRASTRUCTURE_SECURITY_TESTS}

**Test Scenarios:**
- Malicious input testing: {MALICIOUS_INPUT_SCENARIOS}
- Authentication bypass: {AUTH_BYPASS_SCENARIOS}
- Data exposure testing: {DATA_LEAKAGE_SCENARIOS}
- API abuse testing: {API_SECURITY_SCENARIOS}
- Configuration security: {CONFIG_SECURITY_TESTS}

**Security Assertions:**
- No sensitive data in responses
- Proper error handling (no information disclosure)
- Rate limiting effectiveness
- Input sanitization verification
- Access control enforcement

**Please add the AI comment: // [AI-Generated-{TOOL}] - Security tests for {APPLICATION_NAME}**

Known security requirements: {SECURITY_REQUIREMENTS_SPECIFICATION}
```

---

## Test Automation Strategy

### Comprehensive Test Automation Framework

```
Design a test automation framework for {PROJECT_NAME} with the following requirements:

**Project Context:**
- Application stack: {TECHNOLOGY_STACK}
- Team size: {TEAM_SIZE_AND_ROLES}
- Release frequency: {DEPLOYMENT_FREQUENCY}
- Quality gates: {QUALITY_REQUIREMENTS}
- CI/CD pipeline: {CI_CD_PLATFORM}

**Framework Requirements:**
- Testing pyramid strategy: {UNIT_INTEGRATION_E2E_RATIOS}
- Programming language: {AUTOMATION_LANGUAGE}
- Test frameworks: {FRAMEWORK_PREFERENCES}
- Reporting: {TEST_REPORTING_REQUIREMENTS}
- Parallel execution: {PARALLEL_TESTING_NEEDS}

**Framework Components:**
1. **Test Organization** - Project structure and conventions
2. **Data Management** - Test data creation and cleanup
3. **Configuration** - Environment and test configuration
4. **Utilities** - Common testing utilities and helpers
5. **Reporting** - Test results and metrics dashboard

**Implementation Areas:**
- Unit test automation: {UNIT_TEST_REQUIREMENTS}
- API test automation: {API_TEST_REQUIREMENTS}
- UI test automation: {UI_TEST_REQUIREMENTS}
- Performance test automation: {PERFORMANCE_TEST_REQUIREMENTS}
- Security test automation: {SECURITY_TEST_REQUIREMENTS}

**Quality Gates Integration:**
- Pre-commit hooks: {PRE_COMMIT_TEST_REQUIREMENTS}
- CI/CD pipeline integration: {PIPELINE_TEST_STAGES}
- Test coverage requirements: {COVERAGE_THRESHOLDS}
- Performance benchmarks: {PERFORMANCE_GATES}
- Security scanning: {SECURITY_GATE_REQUIREMENTS}

**Maintenance Strategy:**
- Test maintenance approach: {MAINTENANCE_STRATEGY}
- Flaky test management: {FLAKY_TEST_HANDLING}
- Test data management: {TEST_DATA_LIFECYCLE}
- Framework updates: {FRAMEWORK_UPDATE_PROCESS}
- Team training: {TRAINING_AND_ADOPTION_PLAN}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Test automation framework for {PROJECT_NAME}**

Current testing approach: {EXISTING_TESTING_SETUP}
```

---

## Test Data Management

### Test Data Generation and Management

```
Create a comprehensive test data management strategy for {APPLICATION_NAME}:

**Application Data Model:**
- Data entities: {LIST_MAIN_DATA_ENTITIES}
- Relationships: {ENTITY_RELATIONSHIPS}
- Data volume: {PRODUCTION_DATA_VOLUME}
- Data sensitivity: {PII_SENSITIVE_DATA_CLASSIFICATION}
- Compliance requirements: {DATA_COMPLIANCE_REQUIREMENTS}

**Test Data Requirements:**
- Data variety: {DIFFERENT_DATA_SCENARIOS_NEEDED}
- Data volume for testing: {TEST_DATA_VOLUME_REQUIREMENTS}
- Data refresh frequency: {DATA_REFRESH_SCHEDULE}
- Environment-specific needs: {ENV_SPECIFIC_DATA_NEEDS}
- Performance testing data: {PERFORMANCE_TEST_DATA_VOLUME}

**Data Generation Strategy:**
- Synthetic data: {SYNTHETIC_DATA_REQUIREMENTS}
- Production data masking: {DATA_MASKING_REQUIREMENTS}
- Data factories/builders: {DATA_FACTORY_APPROACH}
- Seed data: {SEED_DATA_SPECIFICATIONS}
- Dynamic data creation: {DYNAMIC_DATA_GENERATION}

**Data Management Tools:**
- Data generation libraries: {DATA_GENERATION_TOOLS}
- Database seeding: {DB_SEEDING_STRATEGY}
- Test data cleanup: {DATA_CLEANUP_APPROACH}
- Data versioning: {TEST_DATA_VERSION_CONTROL}
- Environment synchronization: {DATA_SYNC_STRATEGY}

**Privacy and Security:**
- PII handling: {PII_DATA_HANDLING_STRATEGY}
- Data anonymization: {ANONYMIZATION_TECHNIQUES}
- Access controls: {TEST_DATA_ACCESS_CONTROLS}
- Audit trails: {DATA_ACCESS_AUDITING}
- Retention policies: {TEST_DATA_RETENTION}

**Implementation Deliverables:**
1. Test data generation scripts
2. Data factory implementations  
3. Database seeding procedures
4. Data cleanup automation
5. Environment setup scripts
6. Data privacy compliance procedures
7. Data refresh and sync processes
8. Monitoring and reporting tools

**Please add the AI comment: # [AI-Generated-{TOOL}] - Test data management strategy for {APPLICATION_NAME}**

Current data management approach: {EXISTING_DATA_SETUP}
```

---

## Usage Guidelines

### Effective Test Prompt Usage

1. **Provide comprehensive context** - Include code, requirements, and constraints
2. **Specify testing frameworks** - Always indicate your preferred tools and libraries
3. **Include quality requirements** - Coverage, performance, security standards
4. **Request maintainable tests** - Ask for clear, readable, and maintainable test code
5. **Consider test data needs** - Specify data requirements and constraints

### Test Quality Best Practices

- **Test behavior, not implementation** - Focus on what the code should do
- **Use descriptive test names** - Test names should explain the scenario
- **Follow the testing pyramid** - More unit tests, fewer E2E tests
- **Keep tests independent** - Tests should not depend on each other
- **Test edge cases and error conditions** - Don't just test happy paths

### Review Checklist

Before implementing AI-generated tests:
- [ ] Tests cover all specified scenarios
- [ ] Test names are clear and descriptive  
- [ ] Tests are properly organized and structured
- [ ] Mocking is appropriate and not over-used
- [ ] Error cases and edge conditions are tested
- [ ] Tests are maintainable and readable
- [ ] Performance requirements are considered
- [ ] Security implications are addressed
- [ ] Test data is properly managed
- [ ] CI/CD integration is considered

---

## Contributing Testing Prompts

When adding new testing prompts:

1. **Focus on specific testing domains** (e.g., accessibility testing, contract testing)
2. **Include comprehensive requirement gathering**
3. **Consider different testing frameworks** and tools
4. **Address test maintenance** and sustainability
5. **Include quality gates** and success criteria
6. **Test prompts across different AI tools** for consistency

The goal is to generate tests that are thorough, maintainable, and contribute to overall code quality and system reliability.