# 🧪 QA Test Generation Prompts

**Advanced testing strategies for comprehensive quality assurance**

## 🎯 Master Test Generation Prompt

```
Act as a senior QA automation engineer with expertise in comprehensive test strategy design. I need to create a complete test suite for [FEATURE/COMPONENT].

Use ultrathinking to design bulletproof testing:

**Testing Context:**
- Feature: [DETAILED_FEATURE_DESCRIPTION]
- System Under Test: [APPLICATION_TYPE]
- Technology Stack: [TECH_STACK]
- User Personas: [PRIMARY_USERS]
- Business Criticality: [HIGH/MEDIUM/LOW]
- Performance Requirements: [SLA_REQUIREMENTS]
- Security Considerations: [SECURITY_REQUIREMENTS]

**Forensic Test Analysis:**

**1. Requirements Decomposition:**
- Break down feature into testable components
- Identify all user journeys and workflows
- Map business rules to test scenarios
- Analyze integration points and dependencies

**2. Test Strategy Design:**
- **Functional Testing**: Happy path, edge cases, error scenarios
- **Non-Functional Testing**: Performance, security, usability, compatibility
- **Integration Testing**: Component interactions, data flow validation
- **End-to-End Testing**: Complete user journeys, business workflows

**3. Risk-Based Test Prioritization:**
Think harder about potential failure modes:
- High-impact, high-probability scenarios (critical path testing)
- Edge cases that could cause system failures
- Security vulnerabilities and attack vectors
- Performance bottlenecks under load
- Data integrity and consistency issues

**Ultra-Comprehensive Test Deliverables:**

**1. Test Plan Document:**
- Testing scope and objectives
- Test environment requirements
- Entry/exit criteria
- Risk assessment and mitigation

**2. Test Cases (All Levels):**
- Unit test specifications
- Integration test scenarios
- System test cases
- Acceptance test criteria

**3. Automation Strategy:**
- Test automation framework selection
- Page Object Models (for UI tests)
- Test data management approach
- Continuous integration pipeline integration

**4. Performance Test Suite:**
- Load testing scenarios (normal usage)
- Stress testing (beyond normal capacity)
- Volume testing (large data sets)
- Endurance testing (extended periods)

**5. Security Test Cases:**
- Input validation testing
- Authentication/authorization testing  
- SQL injection and XSS testing
- API security testing

Think harder about the most subtle bugs that could escape to production and design specific tests to catch them.
```

## 🔍 Specialized Test Generation Prompts

### API Test Suite Generation

```
As an API testing expert, create comprehensive test coverage for [API_ENDPOINT/SERVICE].

**API Testing Context:**
- API Type: [REST/GRAPHQL/GRPC]
- Endpoint: [SPECIFIC_ENDPOINT]
- Authentication: [AUTH_METHOD]
- Data Format: [JSON/XML/PROTOBUF]
- Rate Limiting: [LIMITS_THROTTLING]

**Ultrathinking API Test Strategy:**

**1. Contract Testing:**
- Schema validation (request/response structure)
- Data type validation (string, number, boolean constraints)
- Required vs optional field testing
- API versioning compatibility

**2. Functional API Testing:**
```
Positive Test Scenarios:
- Valid request with all required fields
- Valid request with optional fields
- Boundary value testing (min/max values)
- Different valid data combinations

Negative Test Scenarios:
- Missing required fields
- Invalid data types
- Malformed request bodies
- Invalid authentication tokens
- Expired/revoked credentials
```

**3. Performance API Testing:**
- Response time validation (SLA compliance)
- Throughput testing (requests per second)
- Concurrent user simulation
- Rate limiting behavior verification

**4. Security API Testing:**
- Input sanitization validation
- SQL injection attempts
- XSS payload injection
- Authorization boundary testing
- HTTPS/TLS configuration verification

**API Test Automation Framework:**
```javascript
// Example API test structure
describe('User API Tests', () => {
  describe('POST /api/users', () => {
    it('should create user with valid data', async () => {
      // Test implementation with assertions
    });
    
    it('should reject invalid email format', async () => {
      // Negative test case
    });
    
    it('should handle concurrent user creation', async () => {
      // Concurrency test
    });
  });
});
```

**Forensic API Analysis:**
Think harder about API failure scenarios:
- Network timeouts and retries
- Partial response handling
- Service dependency failures
- Database connection issues
- Memory/resource exhaustion

**API Test Deliverables:**
1. **Complete Test Suite** (positive/negative/edge cases)
2. **Test Automation Code** (ready-to-run test scripts)
3. **Test Data Management** (fixtures, factories, cleanup)
4. **Performance Benchmarks** (baseline metrics)
5. **Security Test Coverage** (vulnerability scanning)
6. **API Documentation Tests** (ensure docs match implementation)

Use ultrathinking to anticipate real-world API usage patterns and failure modes.
```

### UI Test Automation

```
As a UI automation expert, create comprehensive UI test coverage for [WEB_APPLICATION/MOBILE_APP].

**UI Testing Context:**
- Application Type: [WEB/MOBILE/DESKTOP]
- Framework: [REACT/ANGULAR/VUE/NATIVE]
- Browser Support: [BROWSER_MATRIX]
- Device Support: [DEVICE_MATRIX]
- Accessibility Requirements: [WCAG_LEVEL]

**Ultrathinking UI Test Strategy:**

**1. User Journey Testing:**
- Critical user flows (registration, purchase, checkout)
- Happy path scenarios (successful task completion)
- Error recovery paths (form validation, network errors)
- Cross-browser compatibility validation

**2. Visual Testing:**
- Pixel-perfect UI validation
- Responsive design testing (different screen sizes)
- Cross-browser visual consistency
- Dark/light mode variations

**3. Accessibility Testing:**
- Keyboard navigation testing
- Screen reader compatibility
- Color contrast validation
- Focus management verification

**Advanced UI Test Patterns:**

**Page Object Model Implementation:**
```javascript
class LoginPage {
  constructor(page) {
    this.page = page;
    this.emailInput = '[data-testid="email-input"]';
    this.passwordInput = '[data-testid="password-input"]';
    this.loginButton = '[data-testid="login-button"]';
  }

  async login(email, password) {
    await this.page.fill(this.emailInput, email);
    await this.page.fill(this.passwordInput, password);
    await this.page.click(this.loginButton);
  }

  async getErrorMessage() {
    return await this.page.textContent('[data-testid="error-message"]');
  }
}
```

**Forensic UI Analysis:**
Think harder about UI failure scenarios:
- Race conditions in async UI updates
- Memory leaks in single-page applications
- Browser-specific rendering differences
- Mobile viewport and orientation changes
- Slow network conditions impact
- Ad blockers and browser extensions interference

**UI Test Framework Selection:**
- **Web**: Playwright, Cypress, Selenium WebDriver
- **Mobile**: Appium, Detox, XCUITest, Espresso
- **Visual**: Percy, Chromatic, Applitools
- **Accessibility**: axe-core, Pa11y, Lighthouse

**UI Test Deliverables:**
1. **Complete User Journey Tests** (end-to-end scenarios)
2. **Component-Level Tests** (isolated UI component testing)
3. **Visual Regression Tests** (screenshot comparisons)
4. **Accessibility Test Suite** (WCAG compliance validation)
5. **Performance Tests** (page load times, interaction responsiveness)
6. **Cross-Platform Tests** (browser/device matrix coverage)

Use ultrathinking to simulate real user behavior patterns and edge cases.
```

### Data-Driven Test Generation

```
As a test data expert, create comprehensive data-driven test strategies for [FEATURE_WITH_COMPLEX_DATA].

**Data Testing Context:**
- Data Types: [USER_DATA/FINANCIAL/HEALTHCARE/ETC]
- Data Sources: [DATABASES/APIs/FILES/STREAMS]
- Data Volume: [SMALL/MEDIUM/BIG_DATA]
- Data Sensitivity: [PUBLIC/INTERNAL/CONFIDENTIAL]
- Compliance Requirements: [GDPR/HIPAA/SOX]

**Ultrathinking Data Test Strategy:**

**1. Test Data Categories:**
- **Valid Data Sets**: Typical use cases, boundary values
- **Invalid Data Sets**: Malformed, out-of-range, null/empty
- **Edge Cases**: Maximum/minimum values, special characters
- **Real-World Scenarios**: Production-like data patterns

**2. Data Generation Strategies:**
```
Synthetic Data Generation:
- Faker libraries for realistic fake data
- Property-based testing with random valid inputs
- Mutation testing (modify valid data to create edge cases)
- Combinatorial testing (test all parameter combinations)

Production Data Strategies:
- Data masking and anonymization
- Subset extraction with referential integrity
- Data aging and archival testing
- GDPR right-to-be-forgotten testing
```

**3. Data Validation Testing:**
- Input sanitization and validation rules
- Data transformation accuracy
- Data consistency across systems
- Data backup and recovery procedures

**Advanced Data Testing Framework:**
```python
# Property-based testing example
from hypothesis import given, strategies as st

@given(st.text(min_size=1, max_size=100))
def test_user_name_validation(name):
    # Test that any valid string input is handled correctly
    result = validate_user_name(name)
    assert isinstance(result, bool)
    
@given(st.integers(min_value=0, max_value=120))
def test_age_validation(age):
    # Test age validation with boundary values
    result = validate_age(age)
    if 0 <= age <= 120:
        assert result is True
    else:
        assert result is False
```

**Forensic Data Analysis:**
Think harder about data corruption scenarios:
- Partial data updates during system failures
- Character encoding issues across systems
- Time zone and date format inconsistencies
- Floating-point precision errors
- Concurrent data modification conflicts

**Data Test Deliverables:**
1. **Test Data Generation Scripts** (synthetic data creation)
2. **Data Validation Test Suite** (input/output validation)
3. **Data Migration Tests** (schema changes, version upgrades)
4. **Performance Tests with Large Datasets** (scalability validation)
5. **Data Privacy Tests** (anonymization, access control)
6. **Data Recovery Tests** (backup/restore procedures)

Use ultrathinking to anticipate data quality issues that could impact business operations.
```

## 🚀 Advanced Testing Techniques

### Chaos Engineering Tests

```
As a chaos engineering expert, design resilience tests for [SYSTEM_COMPONENT].

**Chaos Testing Context:**
- System Architecture: [MONOLITH/MICROSERVICES/SERVERLESS]
- Infrastructure: [CLOUD_PROVIDER/ON_PREMISE/HYBRID]
- Critical Dependencies: [DATABASES/EXTERNAL_APIS/QUEUES]
- SLA Requirements: [UPTIME_TARGETS]

**Ultrathinking Chaos Strategy:**

**1. Failure Mode Identification:**
- Infrastructure failures (server crashes, network partitions)
- Dependency failures (database unavailable, API timeouts)
- Resource exhaustion (CPU, memory, disk space)
- Configuration drift (environment variables, secrets)

**2. Chaos Experiments:**
```
Network Chaos:
- Inject network latency between services
- Simulate network partitions and splits
- Test DNS resolution failures
- Bandwidth limitation scenarios

Resource Chaos:
- CPU stress testing
- Memory exhaustion simulation
- Disk space depletion
- File system corruption

Application Chaos:
- Random application restarts
- Database connection failures
- Cache invalidation cascades
- Message queue backlogs
```

**3. Resilience Validation:**
- Circuit breaker effectiveness
- Retry mechanism robustness
- Graceful degradation behavior
- Recovery time measurement

**Chaos Testing Tools:**
- **Chaos Monkey** (Netflix's random termination)
- **Gremlin** (comprehensive failure injection)
- **Litmus** (Kubernetes chaos engineering)
- **Pumba** (Docker container chaos)

**Forensic Resilience Analysis:**
Think harder about cascading failures:
- How does one component failure affect others?
- What are the blast radius containment mechanisms?
- How quickly can the system recover?
- What monitoring alerts are triggered?

**Chaos Test Deliverables:**
1. **Failure Mode Analysis** (comprehensive failure catalog)
2. **Chaos Experiment Plans** (structured failure injection)
3. **Resilience Metrics** (recovery time, impact measurement)
4. **Monitoring Enhancements** (better failure detection)
5. **Runbook Updates** (incident response procedures)

Use ultrathinking to simulate the most creative and unexpected failure scenarios.
```

### Security Test Generation

```
As a security testing expert, create comprehensive security test coverage for [APPLICATION/SYSTEM].

**Security Testing Context:**
- Application Type: [WEB_APP/API/MOBILE/DESKTOP]
- Authentication: [JWT/OAUTH/SAML/BASIC_AUTH]
- Data Sensitivity: [PUBLIC/CONFIDENTIAL/RESTRICTED]
- Compliance: [GDPR/HIPAA/PCI_DSS/SOX]
- Threat Model: [EXTERNAL/INTERNAL/INSIDER]

**Ultrathinking Security Test Strategy:**

**1. OWASP Top 10 Testing:**
- **Injection Attacks**: SQL, NoSQL, LDAP, OS command injection
- **Broken Authentication**: Brute force, session hijacking, credential stuffing  
- **Sensitive Data Exposure**: Encryption, data leaks, insecure storage
- **XML External Entities**: XXE attacks, XML parsers
- **Broken Access Control**: Privilege escalation, IDOR vulnerabilities
- **Security Misconfiguration**: Default credentials, unnecessary services
- **Cross-Site Scripting**: Reflected, stored, DOM-based XSS
- **Insecure Deserialization**: Object injection, code execution
- **Vulnerable Components**: Outdated libraries, known CVEs
- **Insufficient Logging**: Security event detection, response

**2. Advanced Security Testing:**
```
Authentication Testing:
- Multi-factor authentication bypass attempts
- Session management vulnerabilities
- Password policy enforcement
- Account lockout mechanisms

Authorization Testing:
- Vertical privilege escalation
- Horizontal privilege escalation  
- Role-based access control validation
- API endpoint authorization

Data Protection Testing:
- Encryption at rest validation
- Encryption in transit verification
- PII handling compliance
- Data anonymization effectiveness
```

**3. Automated Security Testing:**
```bash
# Security scanning tools integration
npm audit                    # Node.js dependency scanning
safety check                 # Python dependency scanning
bandit -r src/              # Python security linting
semgrep --config=auto       # Static analysis security scanning
```

**Forensic Security Analysis:**
Think harder about attack vectors:
- Social engineering attack surfaces
- Supply chain vulnerabilities
- Side-channel attacks
- Timing attack vulnerabilities
- Business logic flaws
- Race condition exploits

**Security Test Framework:**
```python
# Security test automation example
class SecurityTestSuite:
    def test_sql_injection_resistance(self):
        # Test various SQL injection payloads
        malicious_inputs = ["'; DROP TABLE users; --", "1' OR '1'='1"]
        for payload in malicious_inputs:
            response = self.client.post('/login', {'username': payload})
            assert response.status_code != 500
            assert "error" not in response.text.lower()
    
    def test_xss_protection(self):
        # Test XSS payload filtering
        xss_payloads = ["<script>alert('xss')</script>", "javascript:alert(1)"]
        for payload in xss_payloads:
            response = self.client.post('/comment', {'text': payload})
            assert payload not in response.text
```

**Security Test Deliverables:**
1. **Vulnerability Assessment Report** (comprehensive security scan)
2. **Penetration Test Suite** (automated exploit attempts)
3. **Security Regression Tests** (prevent security bug reintroduction)
4. **Compliance Validation Tests** (regulatory requirement verification)
5. **Security Monitoring Tests** (intrusion detection validation)
6. **Incident Response Tests** (security breach simulation)

Use ultrathinking to anticipate novel attack vectors and defensive measures.
```

---

## 📋 Test Generation Checklist

### Test Planning Phase
- [ ] Analyze requirements and identify testable scenarios
- [ ] Create test strategy document with scope and approach
- [ ] Identify test environment and data requirements
- [ ] Define entry/exit criteria and success metrics
- [ ] Plan test automation framework and tools

### Test Design Phase
- [ ] Design positive, negative, and edge case scenarios
- [ ] Create test data sets (valid, invalid, boundary)
- [ ] Design performance and security test cases
- [ ] Plan integration and end-to-end test scenarios
- [ ] Define test automation patterns and structure

### Test Implementation Phase
- [ ] Implement automated test scripts with good practices
- [ ] Set up test data management and cleanup procedures
- [ ] Configure test execution pipeline and reporting
- [ ] Implement test environment provisioning
- [ ] Add monitoring and alerting for test failures

### Test Execution and Maintenance
- [ ] Execute tests and analyze results systematically
- [ ] Maintain test cases as requirements evolve
- [ ] Optimize test execution time and reliability
- [ ] Update test documentation and knowledge sharing
- [ ] Continuously improve test coverage and quality

**Next Steps**: Explore [Bug Analysis Prompts](./bug-analysis.md) and [Automation Prompts](./automation.md) for advanced QA techniques.