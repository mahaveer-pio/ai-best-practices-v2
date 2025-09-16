# 🔒 Security Planning Guide Template

**Comprehensive AI-Enhanced Security-First Development Planning Framework**

This template provides a systematic approach to integrating security considerations throughout the entire development lifecycle, ensuring robust security from planning to deployment.

## 🛡️ Security Planning Overview

### **Security-First Planning Checklist**
- [ ] **Phase 1**: Security Requirements and Threat Modeling
- [ ] **Phase 2**: Security Architecture and Design Patterns
- [ ] **Phase 3**: Secure Development Standards and Guidelines
- [ ] **Phase 4**: Security Testing and Validation Framework
- [ ] **Phase 5**: Compliance and Regulatory Alignment
- [ ] **Phase 6**: Security Operations and Monitoring
- [ ] **Phase 7**: Incident Response and Recovery Planning

---

## 🔍 Phase 1: Security Requirements and Threat Modeling

### **1.1 Security Requirements Analysis**

**AI Prompt for Security Requirements:**
```markdown
**Comprehensive Security Requirements Analysis**:

Analyze security requirements for: [PROJECT_DESCRIPTION]

**Application Context**:
- **Application Type**: [WEB_APP/MOBILE_APP/API/ENTERPRISE_SOFTWARE]
- **Data Sensitivity**: [PUBLIC/INTERNAL/CONFIDENTIAL/RESTRICTED]
- **User Base**: [INTERNAL/EXTERNAL/MIXED] - [NUMBER of users]
- **Compliance Requirements**: [GDPR/HIPAA/PCI_DSS/SOX/FISMA/etc.]
- **Industry Domain**: [HEALTHCARE/FINANCE/GOVERNMENT/RETAIL/etc.]
- **Threat Environment**: [LOW/MEDIUM/HIGH/CRITICAL threat level]

**Security Requirements Framework**:

1. **Data Protection Requirements**:
   - Data classification and handling requirements
   - Encryption requirements (data at rest, in transit, in processing)
   - Data retention and disposal requirements
   - Personal data protection (GDPR Article 25, Privacy by Design)
   - Data sovereignty and cross-border transfer restrictions
   - Data backup and recovery security requirements

2. **Authentication and Identity Requirements**:
   - User authentication mechanisms (password, MFA, biometrics, SSO)
   - Identity federation and external identity provider integration
   - Session management and timeout requirements
   - Password policy and credential management
   - Account lockout and brute force protection
   - Privileged access management for admin users

3. **Authorization and Access Control Requirements**:
   - Role-Based Access Control (RBAC) implementation
   - Attribute-Based Access Control (ABAC) for complex scenarios
   - Principle of least privilege enforcement
   - Resource-level and field-level access control
   - Delegation and temporary access management
   - Access review and recertification processes

4. **Application Security Requirements**:
   - Input validation and sanitization standards
   - Output encoding and XSS prevention
   - SQL injection and code injection prevention
   - CSRF protection and state management
   - File upload security and validation
   - API security and rate limiting

5. **Infrastructure Security Requirements**:
   - Network segmentation and firewall requirements
   - Secure communication protocols (TLS, VPN)
   - Infrastructure hardening standards
   - Container and cloud security requirements
   - Monitoring and logging security requirements
   - Backup and disaster recovery security

6. **Operational Security Requirements**:
   - Security monitoring and incident detection
   - Audit logging and compliance reporting
   - Vulnerability management and patch processes
   - Security training and awareness requirements
   - Third-party risk management and vendor security
   - Business continuity and disaster recovery

Please provide:
- Detailed security requirements matrix with priority levels
- Regulatory compliance mapping and gap analysis
- Security control framework aligned with industry standards
- Risk-based security requirements prioritization
- Implementation guidelines and acceptance criteria for each requirement
```

**Security Requirements Deliverables:**
- [ ] **Security Requirements Document** with detailed specifications and priorities
- [ ] **Compliance Mapping Matrix** with regulatory requirements and controls
- [ ] **Data Classification Schema** with handling and protection requirements
- [ ] **Access Control Matrix** with role-based permissions and restrictions
- [ ] **Security Control Framework** aligned with industry standards (NIST, ISO 27001)

### **1.2 Threat Modeling and Risk Assessment**

**AI Prompt for Threat Modeling:**
```markdown
**Comprehensive Threat Modeling and Security Risk Analysis**:

Perform threat modeling for: [APPLICATION_DESCRIPTION]

**System Architecture Context**:
- **System Components**: [DETAILED_ARCHITECTURE_DESCRIPTION]
- **Data Flow**: [DATA_PROCESSING_AND_STORAGE_PATTERNS]
- **Integration Points**: [EXTERNAL_SYSTEMS_AND_APIS]
- **User Interactions**: [USER_ROLES_AND_ACCESS_PATTERNS]
- **Deployment Environment**: [CLOUD/ON_PREMISE/HYBRID_INFRASTRUCTURE]

**Threat Modeling Framework (STRIDE Analysis)**:

1. **Spoofing Identity Threats**:
   - Authentication bypass and credential theft scenarios
   - Identity impersonation and session hijacking
   - Social engineering and phishing attack vectors
   - Insider threat scenarios with legitimate access
   - API key and token compromise scenarios

2. **Tampering with Data Threats**:
   - Data manipulation during transmission and storage
   - Configuration tampering and unauthorized changes
   - Code injection and malicious payload insertion
   - Database manipulation and unauthorized modifications
   - File system and log tampering scenarios

3. **Repudiation Threats**:
   - Audit trail manipulation and log tampering
   - Transaction denial and accountability bypasses
   - Non-repudiation failures in critical operations
   - Digital signature and timestamp manipulation
   - Evidence destruction and forensic anti-patterns

4. **Information Disclosure Threats**:
   - Sensitive data exposure through error messages
   - Unauthorized data access and privilege escalation
   - Side-channel attacks and timing analysis
   - Metadata leakage and information inference
   - Backup and archived data exposure

5. **Denial of Service Threats**:
   - Resource exhaustion and availability attacks
   - Distributed denial of service (DDoS) scenarios
   - Application-level DoS and logic bomb attacks
   - Database locking and resource contention
   - Third-party service dependency failures

6. **Elevation of Privilege Threats**:
   - Vertical privilege escalation scenarios
   - Horizontal privilege escalation and user impersonation
   - Administrative interface compromise
   - Operating system and container escape
   - Cloud service privilege escalation

**Threat Risk Assessment**:
For each identified threat, provide:
- **Likelihood Assessment**: Very Low / Low / Medium / High / Very High
- **Impact Assessment**: Negligible / Minor / Moderate / Major / Catastrophic
- **Risk Score**: Likelihood × Impact with risk matrix mapping
- **Attack Vector Analysis**: Entry points and exploitation methods
- **Existing Controls**: Current security measures and their effectiveness
- **Residual Risk**: Risk remaining after current controls
- **Mitigation Recommendations**: Additional controls and countermeasures

Please provide:
- Complete threat model with STRIDE analysis for all system components
- Risk register with prioritized threats and impact assessment
- Attack tree diagrams for high-priority threat scenarios
- Security control gap analysis and recommendations
- Mitigation roadmap with implementation priorities and timelines
```

---

## 🏗️ Phase 2: Security Architecture and Design Patterns

### **2.1 Security Architecture Design**

**AI Prompt for Security Architecture:**
```markdown
**Security Architecture Design and Implementation Strategy**:

Design comprehensive security architecture for: [APPLICATION_DESCRIPTION]

**Architecture Requirements**:
- **Security Posture**: [DEFENSE_IN_DEPTH/ZERO_TRUST/HYBRID_APPROACH]
- **Trust Boundaries**: [INTERNAL/EXTERNAL/PARTNER trust zones]
- **Threat Level**: [SECURITY_CLASSIFICATION and threat environment]
- **Compliance Framework**: [REQUIRED_STANDARDS and certifications]
- **Scalability Needs**: [EXPECTED_GROWTH and performance requirements]

**Security Architecture Framework**:

1. **Identity and Access Management Architecture**:
   - Identity provider selection and federation design
   - Authentication flow design (OAuth 2.0, OIDC, SAML)
   - Multi-factor authentication implementation strategy
   - Session management and token lifecycle design
   - Privileged access management for administrative functions
   - Identity governance and access certification processes

2. **Data Security Architecture**:
   - Data classification and labeling implementation
   - Encryption key management and rotation strategy
   - Data loss prevention (DLP) implementation
   - Database security and access control design
   - API security and data exposure protection
   - Data masking and anonymization for non-production environments

3. **Application Security Architecture**:
   - Secure coding framework and development guidelines
   - Input validation and output encoding strategies
   - API security gateway and rate limiting design
   - Web application firewall (WAF) implementation
   - Container and microservices security design
   - Third-party integration security controls

4. **Infrastructure Security Architecture**:
   - Network segmentation and micro-segmentation design
   - Cloud security posture and configuration management
   - Container orchestration security (Kubernetes, Docker)
   - Service mesh security and mTLS implementation
   - Infrastructure as Code (IaC) security integration
   - Secrets management and configuration security

5. **Monitoring and Detection Architecture**:
   - Security Information and Event Management (SIEM) design
   - Security orchestration, automation, and response (SOAR)
   - Threat intelligence integration and correlation
   - User and Entity Behavior Analytics (UEBA)
   - Vulnerability management and continuous scanning
   - Incident response automation and workflow design

6. **Compliance and Governance Architecture**:
   - Regulatory compliance control implementation
   - Policy management and enforcement automation
   - Audit logging and compliance reporting design
   - Risk management and continuous assessment
   - Third-party risk management and vendor assessment
   - Privacy impact assessment and data protection controls

Please provide:
- Detailed security architecture diagrams with trust boundaries
- Security control implementation roadmap with priorities
- Technology stack recommendations for security components
- Integration patterns for security tools and platforms
- Performance and scalability considerations for security controls
```

**Security Architecture Deliverables:**
- [ ] **Security Architecture Document** with detailed design and control framework
- [ ] **Identity and Access Management Design** with authentication and authorization flows
- [ ] **Data Security Design** with encryption, classification, and protection strategies
- [ ] **Security Integration Patterns** for application and infrastructure components
- [ ] **Monitoring and Detection Framework** with SIEM, SOAR, and incident response integration

### **2.2 Secure Design Patterns and Best Practices**

**AI Prompt for Security Design Patterns:**
```markdown
**Security Design Patterns and Implementation Guidelines**:

Design security patterns and guidelines for: [DEVELOPMENT_CONTEXT]

**Development Context**:
- **Technology Stack**: [LANGUAGES/FRAMEWORKS/PLATFORMS]
- **Architecture Pattern**: [MONOLITHIC/MICROSERVICES/SERVERLESS]
- **Development Team Size**: [TEAM_SIZE and experience level]
- **Security Maturity**: [CURRENT_SECURITY_PRACTICES and capabilities]

**Security Design Patterns Framework**:

1. **Authentication and Authorization Patterns**:
   - Single Sign-On (SSO) implementation patterns
   - Token-based authentication with JWT best practices
   - Role-based access control (RBAC) implementation patterns
   - OAuth 2.0 and OpenID Connect integration patterns
   - Session management and secure cookie handling
   - API key management and rotation patterns

2. **Data Protection Patterns**:
   - Encryption at rest and in transit implementation
   - Key management and hardware security module (HSM) integration
   - Data tokenization and format-preserving encryption
   - Database encryption and transparent data encryption (TDE)
   - Application-level encryption and field-level protection
   - Secure data disposal and sanitization patterns

3. **Input Validation and Output Encoding Patterns**:
   - Centralized input validation and sanitization
   - Parameterized queries and prepared statements
   - Output encoding and context-aware escaping
   - File upload validation and malware scanning
   - Content Security Policy (CSP) implementation
   - Cross-Site Request Forgery (CSRF) protection patterns

4. **API Security Patterns**:
   - API gateway security and rate limiting patterns
   - GraphQL security and query complexity analysis
   - REST API security best practices and validation
   - Microservices security and service-to-service authentication
   - API versioning and backward compatibility security
   - Webhook security and signature validation

5. **Error Handling and Logging Patterns**:
   - Secure error handling without information disclosure
   - Centralized logging and audit trail implementation
   - Log sanitization and sensitive data protection
   - Structured logging for security monitoring and analysis
   - Exception handling and fail-secure design patterns
   - Security event correlation and alerting patterns

6. **Secure Communication Patterns**:
   - TLS/SSL configuration and certificate management
   - mTLS implementation for service-to-service communication
   - Message queue security and encryption in transit
   - VPN and secure tunneling for remote access
   - DNS security and DNS over HTTPS (DoH) implementation
   - Network-level security and firewall rule patterns

Please provide:
- Detailed implementation guidelines for each security pattern
- Code examples and configuration templates for common scenarios
- Security testing and validation procedures for each pattern
- Performance impact analysis and optimization recommendations
- Integration guidelines with existing development workflows and tools
```

---

## 📋 Phase 3: Secure Development Standards and Guidelines

### **3.1 Secure Coding Standards**

**AI Prompt for Secure Coding Guidelines:**
```markdown
**Secure Coding Standards and Development Guidelines**:

Create secure coding standards for: [DEVELOPMENT_ENVIRONMENT]

**Development Context**:
- **Programming Languages**: [PRIMARY_LANGUAGES and frameworks]
- **Application Types**: [WEB/MOBILE/API/DESKTOP applications]
- **Team Skill Level**: [JUNIOR/MIXED/SENIOR development team]
- **Security Requirements**: [COMPLIANCE and security standards]
- **Development Methodology**: [AGILE/DEVOPS/WATERFALL approach]

**Secure Coding Standards Framework**:

1. **Input Validation and Data Handling**:
   - Input validation rules and whitelist-based approaches
   - Data type validation and length restrictions
   - Special character handling and encoding requirements
   - File upload restrictions and malware scanning
   - Database interaction and SQL injection prevention
   - XML and JSON parsing security considerations

2. **Authentication and Session Management**:
   - Password strength and complexity requirements
   - Multi-factor authentication implementation guidelines
   - Session token generation and entropy requirements
   - Session timeout and idle session management
   - Secure password storage and hashing standards (bcrypt, Argon2)
   - Account lockout and brute force protection implementation

3. **Authorization and Access Control**:
   - Principle of least privilege implementation
   - Role-based access control (RBAC) coding patterns
   - Resource-level authorization checking
   - Privilege escalation prevention techniques
   - Direct object reference validation
   - Access control failure handling and logging

4. **Cryptographic Standards and Implementation**:
   - Encryption algorithm selection and key strength requirements
   - Cryptographic key generation, storage, and rotation
   - Digital signature implementation and validation
   - Random number generation for security purposes
   - Certificate validation and trust chain verification
   - Cryptographic library usage and best practices

5. **Error Handling and Information Disclosure**:
   - Secure error message design without sensitive information
   - Exception handling and fail-secure design principles
   - Debugging information removal from production code
   - Log sanitization and sensitive data protection
   - Stack trace and system information disclosure prevention
   - Error monitoring and security incident correlation

6. **Secure Communications and Data Protection**:
   - TLS/SSL implementation and certificate validation
   - API security headers and CORS policy implementation
   - Data serialization and deserialization security
   - Inter-service communication security in microservices
   - Message integrity and authenticity verification
   - Secure storage of sensitive configuration data

**Language-Specific Security Guidelines**:

For each programming language used, provide:
- Common vulnerability patterns and prevention techniques
- Security-focused code review checklists
- Static analysis tool configuration and integration
- Security testing frameworks and libraries
- Performance considerations for security implementations
- Third-party library security assessment and management

**Development Process Integration**:
- Pre-commit security checks and linting rules
- Code review security checklist and training
- Security-focused unit testing and integration testing
- Continuous security testing in CI/CD pipelines
- Security code review tools and automated scanning
- Developer security training and awareness programs

Please provide:
- Comprehensive secure coding standards document with examples
- Language-specific security implementation guidelines
- Code review checklists and security validation procedures
- Security testing integration with development workflow
- Training materials and security awareness content for developers
```

**Secure Development Deliverables:**
- [ ] **Secure Coding Standards Document** with language-specific guidelines and examples
- [ ] **Code Review Security Checklist** with validation criteria and approval processes
- [ ] **Security Testing Integration** with automated scanning and validation tools
- [ ] **Developer Training Program** with security awareness and best practices content
- [ ] **Security Development Lifecycle** integration with existing development processes

### **3.2 Security Code Review and Static Analysis**

**AI Prompt for Security Review Framework:**
```markdown
**Security Code Review and Static Analysis Framework**:

Design security review framework for: [DEVELOPMENT_PROCESS]

**Review Context**:
- **Codebase Size**: [LINES_OF_CODE and complexity level]
- **Review Frequency**: [CONTINUOUS/SPRINT_BASED/MILESTONE_BASED]
- **Team Structure**: [SECURITY_SPECIALISTS/PEER_REVIEW/MIXED approach]
- **Automation Level**: [MANUAL/SEMI_AUTOMATED/FULLY_AUTOMATED tools]

**Security Review Framework**:

1. **Manual Security Code Review Process**:
   - Security-focused code review checklist and guidelines
   - Peer review process with security expertise integration
   - Security architect and specialist review requirements
   - Risk-based review prioritization (high-risk components first)
   - Review documentation and finding tracking procedures
   - Developer feedback and security training integration

2. **Static Application Security Testing (SAST)**:
   - SAST tool selection and configuration for technology stack
   - Custom rule development for organization-specific security requirements
   - False positive management and tuning procedures
   - Integration with development IDE and CI/CD pipelines
   - Security finding prioritization and remediation workflow
   - Metrics and reporting for security debt management

3. **Dynamic Application Security Testing (DAST)**:
   - DAST tool integration with staging and testing environments
   - Automated security testing in CI/CD pipeline integration
   - Authentication and authorization testing automation
   - API security testing and validation procedures
   - Web application security scanner configuration and tuning
   - Penetration testing integration and coordination

4. **Interactive Application Security Testing (IAST)**:
   - IAST agent deployment and configuration in testing environments
   - Real-time vulnerability detection during application execution
   - Code coverage analysis for security testing completeness
   - Performance impact assessment and optimization
   - Integration with development and QA testing workflows
   - Vulnerability correlation and deduplication procedures

5. **Software Composition Analysis (SCA)**:
   - Third-party library and dependency vulnerability scanning
   - Open source license compliance and security risk assessment
   - Automated dependency update and patch management
   - Vulnerability database integration and threat intelligence
   - Supply chain security and vendor risk management
   - Container and infrastructure as code security scanning

6. **Security Review Metrics and Reporting**:
   - Security debt tracking and technical debt integration
   - Vulnerability discovery and remediation metrics
   - Code review coverage and effectiveness measurement
   - Security training and awareness impact assessment
   - Risk-based metrics and compliance reporting
   - Continuous improvement and process optimization

Please provide:
- Complete security review process with manual and automated components
- Tool recommendations and configuration guidelines for technology stack
- Security finding management and remediation workflow
- Metrics and reporting framework for security review effectiveness
- Integration guidelines with existing development and deployment processes
```

---

## 🧪 Phase 4: Security Testing and Validation Framework

### **4.1 Comprehensive Security Testing Strategy**

**AI Prompt for Security Testing Framework:**
```markdown
**Comprehensive Security Testing and Validation Strategy**:

Design security testing framework for: [APPLICATION_CONTEXT]

**Testing Context**:
- **Application Architecture**: [DETAILED_ARCHITECTURE_DESCRIPTION]
- **Security Requirements**: [CRITICAL_SECURITY_CONTROLS and compliance needs]
- **Threat Model**: [KEY_THREATS and attack vectors]
- **Testing Environment**: [STAGING/PRODUCTION_LIKE environments available]
- **Testing Timeline**: [CONTINUOUS/SPRINT_BASED/MILESTONE testing approach]

**Security Testing Framework**:

1. **Authentication and Authorization Testing**:
   - Authentication mechanism testing (password, MFA, SSO, biometrics)
   - Session management and timeout validation
   - Password policy enforcement and credential handling
   - Authorization bypass and privilege escalation testing
   - Role-based access control (RBAC) validation
   - API authentication and token validation testing

2. **Input Validation and Injection Testing**:
   - SQL injection testing for all database interactions
   - Cross-site scripting (XSS) testing for all input fields
   - Command injection and code injection testing
   - XML and JSON injection testing
   - LDAP injection and directory traversal testing
   - File upload validation and malicious content testing

3. **Session Management and State Testing**:
   - Session fixation and session hijacking testing
   - Cross-site request forgery (CSRF) protection validation
   - Concurrent session handling and management
   - Session token entropy and predictability testing
   - Logout functionality and session termination validation
   - Cross-domain and subdomain session security

4. **Business Logic and Workflow Security Testing**:
   - Business rule bypass and manipulation testing
   - Workflow sequence and state manipulation testing
   - Race condition and time-of-check vulnerabilities
   - Price manipulation and financial transaction testing
   - User privilege and data access boundary testing
   - Multi-step process integrity and validation testing

5. **API and Web Services Security Testing**:
   - REST API security testing and validation
   - GraphQL security testing and query complexity analysis
   - SOAP web service security and XML validation
   - API rate limiting and throttling validation
   - API versioning and backward compatibility security
   - Microservices inter-service communication security

6. **Infrastructure and Configuration Security Testing**:
   - Server and network configuration security validation
   - Database security configuration and access control testing
   - Cloud infrastructure security posture validation
   - Container and orchestration security testing
   - SSL/TLS configuration and certificate validation
   - Network segmentation and firewall rule testing

**Specialized Security Testing Areas**:

1. **Mobile Application Security Testing** (if applicable):
   - Mobile platform-specific security testing (iOS, Android)
   - Mobile application data storage and encryption testing
   - Mobile API communication security validation
   - Mobile authentication and biometric testing
   - Mobile application reverse engineering resistance
   - Mobile device integration and permission testing

2. **Cloud Security Testing** (if applicable):
   - Cloud service configuration and security posture testing
   - Identity and access management (IAM) testing
   - Cloud storage security and access control validation
   - Cloud network security and micro-segmentation testing
   - Cloud compliance and governance validation
   - Multi-cloud and hybrid cloud security testing

3. **IoT and Embedded Security Testing** (if applicable):
   - Device firmware security and update mechanism testing
   - Device communication protocol security validation
   - Device authentication and certificate management testing
   - Edge computing and local processing security testing
   - Device lifecycle management and decommissioning security
   - IoT ecosystem integration and interoperability security

Please provide:
- Detailed security test cases and procedures for each testing category
- Security testing tool recommendations and configuration guidelines
- Test data management and security considerations for testing environments
- Security test automation integration with CI/CD pipelines
- Security testing metrics and reporting framework for continuous improvement
```

---

## 📜 Phase 5: Compliance and Regulatory Alignment

### **5.1 Regulatory Compliance Framework**

**AI Prompt for Compliance Planning:**
```markdown
**Regulatory Compliance and Standards Alignment Strategy**:

Design compliance framework for: [APPLICATION_AND_BUSINESS_CONTEXT]

**Compliance Context**:
- **Industry Sector**: [HEALTHCARE/FINANCE/GOVERNMENT/RETAIL/etc.]
- **Geographic Scope**: [REGIONS and jurisdictions where application operates]
- **Data Types Processed**: [PII/PHI/PCI/FINANCIAL/CLASSIFIED data]
- **User Base**: [CONSUMER/ENTERPRISE/GOVERNMENT user categories]
- **Business Model**: [B2B/B2C/B2G business relationships]

**Regulatory Compliance Requirements**:

1. **Data Protection and Privacy Regulations**:
   - GDPR (General Data Protection Regulation) compliance for EU data subjects
   - CCPA (California Consumer Privacy Act) compliance for California residents
   - PIPEDA (Personal Information Protection and Electronic Documents Act) for Canada
   - Data localization and sovereignty requirements by jurisdiction
   - Data subject rights implementation (access, rectification, erasure, portability)
   - Privacy by design and data protection impact assessments (DPIA)

2. **Industry-Specific Compliance Standards**:
   - HIPAA (Health Insurance Portability and Accountability Act) for healthcare
   - PCI DSS (Payment Card Industry Data Security Standard) for payment processing
   - SOX (Sarbanes-Oxley Act) for financial reporting and corporate governance
   - FISMA (Federal Information Security Management Act) for government systems
   - FERPA (Family Educational Rights and Privacy Act) for educational institutions
   - FedRAMP (Federal Risk and Authorization Management Program) for cloud services

3. **Security Framework Compliance**:
   - NIST Cybersecurity Framework implementation and assessment
   - ISO 27001 information security management system (ISMS)
   - SOC 2 (Service Organization Control 2) Type II compliance
   - CIS (Center for Internet Security) Controls implementation
   - OWASP (Open Web Application Security Project) Top 10 mitigation
   - CSA (Cloud Security Alliance) Cloud Controls Matrix

4. **Operational and Audit Requirements**:
   - Audit logging and monitoring requirements for compliance reporting
   - Incident response and breach notification procedures
   - Data retention and disposal policies aligned with regulatory requirements
   - Third-party risk management and vendor assessment procedures
   - Employee training and awareness programs for compliance
   - Regular compliance assessment and internal audit procedures

**Compliance Implementation Framework**:

1. **Gap Analysis and Assessment**:
   - Current state assessment against regulatory requirements
   - Compliance control mapping and gap identification
   - Risk assessment and prioritization of compliance gaps
   - Resource requirements and timeline for compliance achievement
   - Cost-benefit analysis and compliance investment justification

2. **Control Implementation and Documentation**:
   - Policy and procedure development aligned with regulatory requirements
   - Technical control implementation and configuration management
   - Process automation for compliance monitoring and reporting
   - Documentation management and version control for compliance artifacts
   - Training and awareness programs for compliance requirements

3. **Continuous Compliance Monitoring**:
   - Automated compliance monitoring and alerting systems
   - Regular compliance assessment and internal audit procedures
   - External compliance validation and third-party assessments
   - Compliance metrics and key performance indicators (KPIs)
   - Continuous improvement and compliance program maturity development

4. **Compliance Reporting and Communication**:
   - Compliance dashboard and executive reporting
   - Regulatory filing and disclosure management
   - Stakeholder communication and transparency reporting
   - Incident reporting and regulatory notification procedures
   - Compliance training and awareness communication

Please provide:
- Detailed compliance requirements matrix with implementation priorities
- Compliance control mapping to technical and operational implementations
- Compliance monitoring and reporting framework with automation capabilities
- Compliance documentation templates and management procedures
- Compliance training and awareness program design and implementation plan
```

**Compliance Planning Deliverables:**
- [ ] **Compliance Requirements Matrix** with regulatory mapping and gap analysis
- [ ] **Compliance Control Framework** with technical and operational implementations
- [ ] **Policy and Procedure Documentation** aligned with regulatory requirements
- [ ] **Compliance Monitoring System** with automated reporting and alerting
- [ ] **Compliance Training Program** with awareness and certification components

---

## 🔍 Phase 6: Security Operations and Monitoring

### **6.1 Security Monitoring and Incident Response**

**AI Prompt for Security Operations:**
```markdown
**Security Operations and Monitoring Framework Design**:

Design security operations framework for: [APPLICATION_AND_INFRASTRUCTURE_CONTEXT]

**Operational Context**:
- **System Scale**: [USER_COUNT, transaction volume, data processing volume]
- **Criticality Level**: [BUSINESS_CRITICAL/HIGH/MEDIUM/LOW impact classification]
- **Operational Model**: [24x7/BUSINESS_HOURS/ON_DEMAND support coverage]
- **Team Structure**: [IN_HOUSE/MANAGED_SERVICE/HYBRID security operations]
- **Technology Stack**: [SECURITY_TOOLS and platforms currently in use]

**Security Operations Framework**:

1. **Security Information and Event Management (SIEM)**:
   - SIEM platform selection and architecture design
   - Log source integration and data normalization procedures
   - Correlation rules and detection logic development
   - Threat intelligence integration and enrichment
   - Alert prioritization and false positive reduction
   - Incident escalation and response workflow integration

2. **Security Orchestration, Automation, and Response (SOAR)**:
   - Incident response automation and workflow design
   - Security tool integration and API orchestration
   - Threat hunting automation and investigation procedures
   - Vulnerability management automation and prioritization
   - Compliance reporting automation and dashboard creation
   - Metrics and KPI automation for security operations

3. **Threat Detection and Analysis**:
   - User and Entity Behavior Analytics (UEBA) implementation
   - Network traffic analysis and anomaly detection
   - Endpoint detection and response (EDR) integration
   - Application security monitoring and real-time protection
   - Cloud security posture management (CSPM) and monitoring
   - Threat intelligence platform integration and analysis

4. **Incident Response and Management**:
   - Incident classification and severity level definitions
   - Incident response procedures and escalation matrix
   - Digital forensics and evidence collection procedures
   - Communication and stakeholder notification protocols
   - Post-incident analysis and lessons learned processes
   - Business continuity and disaster recovery integration

5. **Vulnerability Management and Patch Operations**:
   - Vulnerability scanning automation and scheduling
   - Risk-based vulnerability prioritization and remediation
   - Patch management automation and testing procedures
   - Configuration management and baseline monitoring
   - Security assessment and penetration testing coordination
   - Third-party risk assessment and vendor security monitoring

6. **Security Metrics and Reporting**:
   - Security KPI definition and measurement procedures
   - Executive dashboard and reporting automation
   - Compliance reporting and regulatory submission automation
   - Trend analysis and security posture improvement tracking
   - Benchmarking and industry comparison analysis
   - Return on investment (ROI) calculation for security investments

**24x7 Security Operations Center (SOC) Design**:

1. **SOC Architecture and Staffing**:
   - SOC tier structure (L1/L2/L3) and role definitions
   - Shift scheduling and coverage planning for continuous operations
   - Skill development and training programs for SOC analysts
   - Escalation procedures and expert consultation integration
   - Knowledge management and documentation maintenance

2. **SOC Technology Stack**:
   - Security tool integration and single pane of glass design
   - Analyst workstation and investigation tool configuration
   - Communication and collaboration platform integration
   - Case management and ticketing system integration
   - Reporting and dashboard customization for different audiences

3. **SOC Processes and Procedures**:
   - Standard operating procedures (SOPs) for common scenarios
   - Incident handling and investigation playbooks
   - Threat hunting procedures and proactive analysis
   - Quality assurance and performance measurement
   - Continuous improvement and process optimization

Please provide:
- Complete security operations framework with technology and process components
- SOC design and implementation roadmap with staffing and training requirements
- Security monitoring use cases and detection logic for critical threats
- Incident response playbooks and escalation procedures for different scenarios
- Security operations metrics and reporting framework for continuous improvement
```

---

## 🚨 Phase 7: Incident Response and Recovery Planning

### **7.1 Incident Response Framework**

**AI Prompt for Incident Response Planning:**
```markdown
**Comprehensive Incident Response and Recovery Planning**:

Design incident response framework for: [ORGANIZATION_AND_SYSTEM_CONTEXT]

**Incident Response Context**:
- **Business Criticality**: [SYSTEM_IMPORTANCE and business impact]
- **Regulatory Requirements**: [BREACH_NOTIFICATION and compliance obligations]
- **Recovery Objectives**: [RTO/RPO requirements and business continuity needs]
- **Stakeholder Ecosystem**: [INTERNAL/EXTERNAL stakeholders and communication needs]
- **Technical Infrastructure**: [SYSTEM_ARCHITECTURE and recovery capabilities]

**Incident Response Framework**:

1. **Incident Classification and Severity Levels**:
   - Security incident category definitions (data breach, system compromise, etc.)
   - Severity level criteria and impact assessment matrix
   - Escalation triggers and automatic notification thresholds
   - Business impact assessment and stakeholder notification requirements
   - Regulatory reporting triggers and timeline requirements
   - Recovery priority and resource allocation criteria

2. **Incident Detection and Analysis**:
   - Security monitoring and detection capability integration
   - Incident triage and initial assessment procedures
   - Evidence collection and preservation protocols
   - Digital forensics and investigation procedures
   - Threat attribution and attack vector analysis
   - Impact assessment and containment strategy development

3. **Incident Containment and Eradication**:
   - Immediate response and containment procedures
   - System isolation and network segmentation protocols
   - Malware removal and system cleaning procedures
   - Vulnerability remediation and patch management
   - Access revocation and credential reset procedures
   - Evidence preservation and chain of custody maintenance

4. **Recovery and Restoration**:
   - System restoration and service recovery procedures
   - Data recovery and backup restoration protocols
   - Service validation and integrity verification
   - Performance monitoring and capacity validation
   - User communication and service announcement procedures
   - Lessons learned and improvement implementation

5. **Communication and Stakeholder Management**:
   - Internal communication procedures and escalation matrix
   - External communication and customer notification protocols
   - Regulatory reporting and breach notification procedures
   - Media relations and public communication management
   - Legal and insurance coordination and claims management
   - Executive briefing and board reporting procedures

6. **Post-Incident Analysis and Improvement**:
   - Root cause analysis and contributing factor identification
   - Security control effectiveness assessment and improvement
   - Process and procedure review and optimization
   - Training and awareness program updates based on lessons learned
   - Technology and tool enhancement recommendations
   - Metrics and KPI analysis for incident response effectiveness

**Incident Response Team Structure**:

1. **Incident Response Team Roles and Responsibilities**:
   - Incident Commander: Overall response coordination and decision making
   - Security Analyst: Technical investigation and analysis
   - System Administrator: System containment and recovery operations
   - Communications Lead: Stakeholder communication and public relations
   - Legal Counsel: Legal compliance and regulatory coordination
   - Executive Sponsor: Business decision making and resource authorization

2. **Incident Response Training and Preparedness**:
   - Incident response team training and skill development programs
   - Tabletop exercises and incident simulation scenarios
   - Response plan testing and validation procedures
   - Cross-training and backup resource development
   - Knowledge management and documentation maintenance
   - External resource coordination and vendor management

3. **Incident Response Technology and Tools**:
   - Incident management platform and workflow automation
   - Digital forensics and investigation tool configuration
   - Communication and collaboration platform integration
   - Evidence collection and preservation tool deployment
   - Threat intelligence and attribution analysis tools
   - Recovery and restoration automation and orchestration

**Business Continuity and Disaster Recovery Integration**:

1. **Business Continuity Planning**:
   - Critical business process identification and prioritization
   - Alternative process and manual operation procedures
   - Supplier and vendor continuity planning and coordination
   - Customer communication and service level management
   - Financial impact assessment and insurance coverage coordination

2. **Disaster Recovery Planning**:
   - Recovery site selection and configuration management
   - Data backup and replication strategy implementation
   - Recovery testing and validation procedures
   - Recovery time objective (RTO) and recovery point objective (RPO) validation
   - Cross-site failover and failback procedures

Please provide:
- Complete incident response plan with procedures and escalation matrix
- Incident response team structure with roles, responsibilities, and contact information
- Incident response training program and exercise schedule
- Business continuity and disaster recovery integration procedures
- Incident response metrics and continuous improvement framework
```

**Incident Response Deliverables:**
- [ ] **Incident Response Plan** with detailed procedures and escalation matrix
- [ ] **Incident Response Team Charter** with roles, responsibilities, and contact information
- [ ] **Incident Response Playbooks** for common security incident scenarios
- [ ] **Business Continuity Plan** with critical process recovery procedures
- [ ] **Incident Response Training Program** with exercises and skill development

---

## 📊 Security Planning Progress Tracking

### **Security Implementation Dashboard**

```markdown
## Security Planning Status Dashboard - [PROJECT_NAME]

**Security Posture**: [BASELINE/DEVELOPING/MATURE/OPTIMIZED]
**Compliance Status**: [NON_COMPLIANT/PARTIALLY_COMPLIANT/COMPLIANT/CERTIFIED]
**Risk Level**: [HIGH/MEDIUM/LOW/MINIMAL]
**Last Assessment**: [DATE]

### 🛡️ Security Phase Progress: [PERCENTAGE]%

#### Security Planning Phases:
- [ ] **Requirements & Threat Modeling** (0-15%): ___% Complete
- [ ] **Security Architecture & Design** (15-35%): ___% Complete
- [ ] **Secure Development Standards** (35-55%): ___% Complete
- [ ] **Security Testing Framework** (55-75%): ___% Complete
- [ ] **Compliance & Governance** (75-90%): ___% Complete
- [ ] **Operations & Monitoring** (90-100%): ___% Complete

### 🎯 Current Security Focus
**Active Phase**: [CURRENT_SECURITY_PHASE]
**Priority Security Controls**:
- [ ] [HIGH_PRIORITY_CONTROL_1]
- [ ] [HIGH_PRIORITY_CONTROL_2]
- [ ] [HIGH_PRIORITY_CONTROL_3]

### ⚠️ Security Risk Status
**Critical Risks**: [NUMBER] | **High Risks**: [NUMBER] | **Medium Risks**: [NUMBER]
**Unmitigated Vulnerabilities**: [NUMBER]
**Compliance Gaps**: [NUMBER]

### 📈 Security Metrics
- **Security Control Coverage**: [PERCENTAGE]%
- **Vulnerability Remediation Rate**: [PERCENTAGE]%
- **Security Training Completion**: [PERCENTAGE]%
- **Incident Response Readiness**: [RATING]/10
```

### **Security Checklist Validation**

```markdown
## Security Implementation Checklist - [PROJECT_NAME]

### 🔒 Foundational Security Controls
- [ ] **Multi-Factor Authentication** implemented and tested
- [ ] **Data Encryption** (at rest and in transit) configured
- [ ] **Access Control** (RBAC/ABAC) implemented and validated
- [ ] **Input Validation** comprehensive across all inputs
- [ ] **Security Logging** configured with SIEM integration
- [ ] **Vulnerability Management** process operational

### 🛡️ Application Security Controls
- [ ] **Secure Authentication** with strong password policies
- [ ] **Session Management** secure with proper timeout
- [ ] **API Security** with rate limiting and validation
- [ ] **Error Handling** secure without information disclosure
- [ ] **File Upload Security** with validation and scanning
- [ ] **Cross-Site Scripting (XSS)** protection implemented

### 🔐 Infrastructure Security Controls
- [ ] **Network Segmentation** implemented and tested
- [ ] **Firewall Configuration** reviewed and hardened
- [ ] **TLS/SSL Configuration** properly implemented
- [ ] **Container Security** hardened and scanned
- [ ] **Cloud Security** posture configured and monitored
- [ ] **Backup Security** encrypted and tested

### 📜 Compliance and Governance
- [ ] **Privacy Controls** implemented per regulatory requirements
- [ ] **Audit Logging** comprehensive and tamper-resistant
- [ ] **Data Retention** policies implemented and automated
- [ ] **Incident Response** plan tested and operational
- [ ] **Security Training** completed for all team members
- [ ] **Third-Party Risk** assessment and management operational
```

---

## 🎯 Security Success Criteria

### **Security Implementation Success Metrics**
- [ ] **Zero Critical Vulnerabilities**: No unresolved critical security issues
- [ ] **Compliance Achievement**: All required regulatory standards met
- [ ] **Security Control Coverage**: >95% of identified controls implemented
- [ ] **Incident Response Readiness**: Tested and validated incident response capability
- [ ] **Security Training Completion**: 100% team completion of security awareness training
- [ ] **Vulnerability Remediation**: <30 day average time to remediate high/critical issues

### **Operational Security Success Indicators**
- [ ] **Security Monitoring**: 24x7 monitoring and alerting operational
- [ ] **Threat Detection**: Advanced threat detection and response capability
- [ ] **Security Metrics**: Comprehensive security KPIs and reporting
- [ ] **Continuous Improvement**: Regular security assessments and improvements
- [ ] **Stakeholder Confidence**: Executive and stakeholder approval of security posture

---

**Remember**: Always mark AI-generated security implementations with:
```
// [AI-Generated] - Security implementation for [SPECIFIC_COMPONENT]
// Review required: Validate security controls, test effectiveness, and ensure compliance
```

**Ready to build security into your project from the ground up?** Use this comprehensive security planning template to ensure robust security throughout your development lifecycle.