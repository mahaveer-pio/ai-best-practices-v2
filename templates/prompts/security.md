---
title: Security Prompts
audience: Security Engineers, Developers, DevSecOps Teams
purpose: AI-assisted security analysis, threat modeling, and secure code generation
---

# Security Prompts

This collection provides comprehensive prompts for AI-assisted security analysis, threat modeling, secure code generation, and security testing. These prompts help ensure security is built into your development process from the start.

  **Security Notice**: Always have security-generated code reviewed by qualified security professionals before production deployment.

## Secure Code Generation

### Secure Authentication Implementation

```
Generate secure authentication code for {APPLICATION_TYPE} with the following security requirements:

**Authentication Context:**
- Application type: {WEB_API_MOBILE_DESCRIPTION}
- User types: {USER_CATEGORIES_AND_ROLES}
- Authentication method: {JWT_SESSION_OAUTH_PREFERENCE}
- Multi-factor authentication: {MFA_REQUIREMENTS}
- Password policies: {PASSWORD_POLICY_REQUIREMENTS}

**Security Requirements:**
- Password hashing: {BCRYPT_ARGON2_SCRYPT_PREFERENCE}
- Session management: {SESSION_SECURITY_REQUIREMENTS}
- Rate limiting: {LOGIN_ATTEMPT_LIMITS}
- Account lockout: {LOCKOUT_POLICY_REQUIREMENTS}
- Audit logging: {SECURITY_LOGGING_REQUIREMENTS}

**Technical Specifications:**
- Framework: {FRAMEWORK_AND_LANGUAGE}
- Token expiration: {ACCESS_REFRESH_TOKEN_LIFETIMES}
- Secret management: {SECRET_STORAGE_STRATEGY}
- Transport security: {TLS_HTTPS_REQUIREMENTS}
- Cross-origin handling: {CORS_REQUIREMENTS}

**Security Controls:**
1. **Input validation** - All authentication inputs sanitized
2. **Brute force protection** - Rate limiting and account lockout
3. **Token security** - Secure generation, storage, and validation
4. **Session security** - Secure session handling and cleanup
5. **Audit logging** - Comprehensive security event logging

**Compliance Requirements:**
- Standards: {OWASP_NIST_ISO_REQUIREMENTS}
- Regulations: {GDPR_HIPAA_SOX_REQUIREMENTS}
- Industry best practices: {INDUSTRY_SPECIFIC_REQUIREMENTS}
- Internal policies: {COMPANY_SECURITY_POLICIES}

**Attack Vectors to Prevent:**
- Credential stuffing: {CREDENTIAL_STUFFING_PROTECTION}
- Session fixation: {SESSION_FIXATION_PREVENTION}
- JWT attacks: {JWT_SECURITY_MEASURES}
- Password attacks: {PASSWORD_ATTACK_PREVENTION}
- Man-in-the-middle: {MITM_PROTECTION_MEASURES}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Secure authentication implementation**

Reference existing security patterns: {PASTE_EXISTING_SECURITY_CODE}
```

### Secure Data Handling

```
Generate secure data handling code for {DATA_TYPE} with these protection requirements:

**Data Classification:**
- Data type: {PII_PHI_FINANCIAL_CLASSIFICATION}
- Sensitivity level: {PUBLIC_INTERNAL_CONFIDENTIAL_RESTRICTED}
- Regulatory requirements: {GDPR_HIPAA_PCI_REQUIREMENTS}
- Data residency: {GEOGRAPHIC_DATA_REQUIREMENTS}
- Retention policies: {DATA_RETENTION_REQUIREMENTS}

**Security Controls:**
- Encryption at rest: {ENCRYPTION_ALGORITHM_REQUIREMENTS}
- Encryption in transit: {TLS_ENCRYPTION_REQUIREMENTS}
- Key management: {KEY_MANAGEMENT_STRATEGY}
- Access controls: {RBAC_ABAC_REQUIREMENTS}
- Data masking: {DATA_MASKING_REQUIREMENTS}

**Technical Implementation:**
- Programming language: {LANGUAGE_AND_FRAMEWORK}
- Database: {DATABASE_ENCRYPTION_REQUIREMENTS}
- API security: {API_DATA_PROTECTION}
- File handling: {FILE_ENCRYPTION_REQUIREMENTS}
- Logging security: {SECURE_LOGGING_PRACTICES}

**Data Lifecycle Security:**
1. **Data collection** - Secure input validation and sanitization
2. **Data processing** - Secure transformation and computation  
3. **Data storage** - Encrypted storage with proper access controls
4. **Data transmission** - Secure communication protocols
5. **Data disposal** - Secure deletion and cleanup

**Compliance Controls:**
- Right to erasure: {GDPR_ERASURE_IMPLEMENTATION}
- Data minimization: {DATA_MINIMIZATION_STRATEGY}
- Consent management: {CONSENT_TRACKING_IMPLEMENTATION}
- Breach notification: {BREACH_DETECTION_REPORTING}
- Audit trails: {DATA_ACCESS_AUDITING}

**Attack Prevention:**
- SQL injection: {SQL_INJECTION_PREVENTION}
- NoSQL injection: {NOSQL_INJECTION_PREVENTION}
- Data exposure: {DATA_LEAKAGE_PREVENTION}
- Insider threats: {INSIDER_THREAT_CONTROLS}
- Data tampering: {DATA_INTEGRITY_PROTECTION}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Secure data handling for {DATA_TYPE}**

Existing data handling patterns: {PASTE_EXISTING_DATA_CODE}
```

---

## Security Analysis & Assessment

### Threat Modeling

```
Conduct a comprehensive threat model for {SYSTEM_NAME} using the STRIDE methodology:

**System Context:**
- Application type: {APPLICATION_DESCRIPTION}
- Architecture: {SYSTEM_ARCHITECTURE_OVERVIEW}
- Data flows: {DESCRIBE_DATA_FLOWS}
- Trust boundaries: {IDENTIFY_TRUST_BOUNDARIES}
- External dependencies: {LIST_EXTERNAL_SYSTEMS}

**Asset Identification:**
- Critical assets: {LIST_CRITICAL_ASSETS}
- Data assets: {SENSITIVE_DATA_TYPES}
- System components: {KEY_SYSTEM_COMPONENTS}
- Infrastructure assets: {INFRASTRUCTURE_COMPONENTS}
- Intellectual property: {IP_ASSETS_TO_PROTECT}

**Threat Analysis (STRIDE):**
1. **Spoofing** - Identity verification weaknesses
2. **Tampering** - Data/code modification attacks
3. **Repudiation** - Denial of action attacks  
4. **Information Disclosure** - Unauthorized data access
5. **Denial of Service** - Availability attacks
6. **Elevation of Privilege** - Authorization bypass

**Attack Vectors:**
- Network attacks: {NETWORK_ATTACK_SCENARIOS}
- Application attacks: {APPLICATION_ATTACK_VECTORS}
- Social engineering: {SOCIAL_ENGINEERING_RISKS}
- Insider threats: {INSIDER_THREAT_SCENARIOS}
- Supply chain attacks: {SUPPLY_CHAIN_RISKS}

**Risk Assessment:**
- Likelihood assessment: {THREAT_LIKELIHOOD_CRITERIA}
- Impact assessment: {BUSINESS_IMPACT_CRITERIA}
- Risk rating system: {RISK_SCORING_METHODOLOGY}
- Risk tolerance: {ORGANIZATIONAL_RISK_APPETITE}
- Compliance impacts: {REGULATORY_RISK_IMPLICATIONS}

**Deliverables Requested:**
1. Threat model diagram
2. Asset inventory with criticality ratings
3. Threat enumeration with STRIDE classification
4. Risk assessment matrix
5. Mitigation recommendations prioritized by risk
6. Security requirements derived from threats
7. Security testing scenarios
8. Incident response considerations

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Threat model for {SYSTEM_NAME} -->**

Current security measures: {EXISTING_SECURITY_CONTROLS}
```

### Security Code Review

```
Perform a comprehensive security code review of the following code:

**Code to Review:**
```{LANGUAGE}
{PASTE_CODE_FOR_REVIEW}
```

**Review Context:**
- Programming language: {LANGUAGE_SPECIFICS}
- Framework: {FRAMEWORK_AND_VERSION}
- Application context: {APPLICATION_DOMAIN_CONTEXT}
- Security requirements: {RELEVANT_SECURITY_REQUIREMENTS}
- Compliance needs: {APPLICABLE_COMPLIANCE_STANDARDS}

**Security Review Areas:**
1. **Input Validation** - All inputs properly validated and sanitized
2. **Authentication** - Proper authentication implementation
3. **Authorization** - Correct access control enforcement
4. **Data Protection** - Sensitive data properly handled
5. **Error Handling** - No information leakage in errors
6. **Cryptography** - Proper use of cryptographic functions
7. **Session Management** - Secure session handling
8. **Configuration** - Secure configuration practices

**OWASP Top 10 Assessment:**
- A01 Broken Access Control: {ACCESS_CONTROL_REVIEW}
- A02 Cryptographic Failures: {CRYPTO_IMPLEMENTATION_REVIEW}
- A03 Injection: {INJECTION_VULNERABILITY_REVIEW}
- A04 Insecure Design: {DESIGN_SECURITY_REVIEW}
- A05 Security Misconfiguration: {CONFIG_SECURITY_REVIEW}
- A06 Vulnerable Components: {DEPENDENCY_SECURITY_REVIEW}
- A07 Identity/Authentication Failures: {AUTH_SECURITY_REVIEW}
- A08 Software/Data Integrity: {INTEGRITY_REVIEW}
- A09 Logging/Monitoring Failures: {LOGGING_SECURITY_REVIEW}
- A10 Server-Side Request Forgery: {SSRF_REVIEW}

**Language-Specific Security Issues:**
- {LANGUAGE}-specific vulnerabilities: {LANGUAGE_SPECIFIC_CHECKS}
- Framework security patterns: {FRAMEWORK_SECURITY_REVIEW}
- Library security: {THIRD_PARTY_LIBRARY_REVIEW}
- Platform security: {PLATFORM_SPECIFIC_SECURITY}

**Security Testing Recommendations:**
- Unit security tests: {UNIT_TEST_SECURITY_SCENARIOS}
- Integration security tests: {INTEGRATION_SECURITY_TESTS}
- Penetration testing scenarios: {PENTEST_SCENARIOS}
- Static analysis tools: {SAST_TOOL_RECOMMENDATIONS}

**Deliverables:**
1. Detailed security findings with severity ratings
2. Code-specific recommendations for each finding
3. Secure coding alternatives for vulnerable patterns
4. Security test cases to prevent regression
5. Compliance gap analysis
6. Risk assessment of identified issues

**Please add the AI comment: // [AI-Generated-{TOOL}] - Security code review analysis**

Security coding standards reference: {SECURITY_CODING_STANDARDS}
```

---

## Infrastructure Security

### Secure Infrastructure as Code

```
Generate secure Infrastructure as Code (IaC) for {INFRASTRUCTURE_PURPOSE} with these security requirements:

**Infrastructure Context:**
- Cloud provider: {AWS_AZURE_GCP_MULTI_CLOUD}
- IaC tool: {TERRAFORM_CLOUDFORMATION_ARM_PULUMI}
- Environment: {DEV_STAGING_PROD_ENVIRONMENT}
- Compliance requirements: {SOC2_ISO27001_FEDRAMP}
- Security frameworks: {CIS_NIST_CLOUD_SECURITY_FRAMEWORKS}

**Security Requirements:**
- Network security: {VPC_SUBNET_FIREWALL_REQUIREMENTS}
- Access controls: {IAM_RBAC_REQUIREMENTS}
- Encryption: {ENCRYPTION_KEY_MANAGEMENT}
- Monitoring: {LOGGING_MONITORING_REQUIREMENTS}
- Backup/recovery: {DISASTER_RECOVERY_REQUIREMENTS}

**Infrastructure Components:**
- Compute resources: {EC2_CONTAINERS_SERVERLESS_REQUIREMENTS}
- Storage: {DATABASE_OBJECT_STORAGE_REQUIREMENTS}
- Networking: {LOAD_BALANCER_CDN_REQUIREMENTS}  
- Security services: {WAF_SECRETS_MANAGEMENT_REQUIREMENTS}
- Monitoring: {LOGGING_ALERTING_REQUIREMENTS}

**Security Controls:**
1. **Network Security** - VPC, subnets, security groups, NACLs
2. **Identity & Access** - IAM roles, policies, MFA requirements
3. **Data Protection** - Encryption at rest and in transit
4. **Monitoring** - CloudTrail, VPC Flow Logs, security monitoring
5. **Compliance** - Security benchmarks and compliance automation

**Security Hardening:**
- CIS benchmarks: {CIS_BENCHMARK_REQUIREMENTS}
- Security baselines: {SECURITY_BASELINE_STANDARDS}
- Patch management: {PATCHING_STRATEGY}
- Vulnerability management: {VULN_SCANNING_REQUIREMENTS}
- Configuration drift: {CONFIG_DRIFT_PREVENTION}

**DevSecOps Integration:**
- Security scanning: {SAST_DAST_SCA_INTEGRATION}
- Policy as code: {SECURITY_POLICY_AUTOMATION}
- Compliance automation: {COMPLIANCE_TESTING_AUTOMATION}
- Secret management: {SECRET_ROTATION_AUTOMATION}
- Security gates: {DEPLOYMENT_SECURITY_GATES}

**Please add the AI comment: # [AI-Generated-{TOOL}] - Secure IaC for {INFRASTRUCTURE_PURPOSE}**

Existing infrastructure patterns: {CURRENT_INFRASTRUCTURE_SETUP}
```

### Container Security Configuration

```
Generate secure container configuration for {APPLICATION_NAME} with comprehensive security controls:

**Container Context:**
- Base image: {BASE_IMAGE_REQUIREMENTS}
- Application framework: {APP_FRAMEWORK_AND_LANGUAGE}
- Orchestration: {KUBERNETES_DOCKER_COMPOSE_ECS}
- Registry: {CONTAINER_REGISTRY_REQUIREMENTS}
- Environment: {DEPLOYMENT_ENVIRONMENT_CONTEXT}

**Image Security:**
- Base image security: {MINIMAL_DISTROLESS_SECURE_BASE}
- Vulnerability scanning: {IMAGE_SCANNING_REQUIREMENTS}
- Image signing: {IMAGE_SIGNING_VERIFICATION}
- Multi-stage builds: {MULTI_STAGE_BUILD_REQUIREMENTS}
- Layer optimization: {IMAGE_SIZE_SECURITY_OPTIMIZATION}

**Runtime Security:**
- User permissions: {NON_ROOT_USER_REQUIREMENTS}
- Resource limits: {CPU_MEMORY_RESOURCE_LIMITS}
- Security contexts: {SECURITY_CONTEXT_REQUIREMENTS}
- Network policies: {NETWORK_ISOLATION_REQUIREMENTS}
- Storage security: {VOLUME_MOUNT_SECURITY}

**Kubernetes Security (if applicable):**
- Pod security standards: {PSS_REQUIREMENTS}
- Service accounts: {SERVICE_ACCOUNT_CONFIGURATION}
- RBAC: {KUBERNETES_RBAC_REQUIREMENTS}
- Network policies: {K8S_NETWORK_POLICIES}
- Admission controllers: {ADMISSION_CONTROLLER_POLICIES}

**Security Controls:**
1. **Image Security** - Secure base images and vulnerability management
2. **Runtime Security** - Least privilege and resource constraints
3. **Network Security** - Network segmentation and policies
4. **Data Security** - Secure storage and secrets management
5. **Monitoring** - Container security monitoring and logging

**Compliance & Standards:**
- CIS benchmarks: {CIS_DOCKER_KUBERNETES_BENCHMARKS}
- NIST guidelines: {NIST_CONTAINER_SECURITY_GUIDE}
- Industry standards: {INDUSTRY_CONTAINER_SECURITY_REQUIREMENTS}
- Internal policies: {COMPANY_CONTAINER_POLICIES}

**Deliverables:**
1. Secure Dockerfile with security best practices
2. Kubernetes manifests with security configurations
3. Security policy definitions
4. Monitoring and logging configuration
5. Image scanning and compliance automation
6. Security testing procedures
7. Incident response procedures for containers

**Please add the AI comment: # [AI-Generated-{TOOL}] - Secure container config for {APPLICATION_NAME}**

Current containerization approach: {EXISTING_CONTAINER_SETUP}
```

---

## API Security

### Secure API Design

```
Design secure API architecture for {API_PURPOSE} with comprehensive security controls:

**API Context:**
- API type: {REST_GRAPHQL_GRPC_WEBSOCKET}
- Data sensitivity: {PUBLIC_INTERNAL_CONFIDENTIAL_DATA}
- Consumer types: {INTERNAL_PARTNER_PUBLIC_CONSUMERS}
- Expected load: {REQUEST_VOLUME_AND_PATTERNS}
- Compliance requirements: {API_COMPLIANCE_REQUIREMENTS}

**Authentication & Authorization:**
- Authentication methods: {JWT_OAUTH_API_KEY_MUTUAL_TLS}
- Authorization model: {RBAC_ABAC_SCOPE_BASED}
- Token management: {TOKEN_LIFECYCLE_MANAGEMENT}
- Multi-factor authentication: {MFA_REQUIREMENTS}
- Session management: {SESSION_SECURITY_REQUIREMENTS}

**API Security Controls:**
1. **Input Validation** - Comprehensive request validation
2. **Rate Limiting** - DoS protection and abuse prevention
3. **Data Protection** - Response filtering and data masking
4. **Error Handling** - Secure error responses
5. **Audit Logging** - Complete API access logging

**Security Headers & Configuration:**
- HTTP security headers: {SECURITY_HEADERS_REQUIREMENTS}
- CORS configuration: {CORS_POLICY_REQUIREMENTS}
- Content Security Policy: {CSP_REQUIREMENTS}
- TLS configuration: {TLS_VERSION_CIPHER_REQUIREMENTS}
- Certificate management: {CERT_MANAGEMENT_STRATEGY}

**API Gateway Security:**
- Gateway platform: {API_GATEWAY_PREFERENCE}
- Security policies: {GATEWAY_SECURITY_POLICIES}
- Traffic management: {TRAFFIC_CONTROL_REQUIREMENTS}
- Monitoring integration: {GATEWAY_MONITORING_SETUP}
- DDoS protection: {DDOS_MITIGATION_STRATEGY}

**Data Security:**
- Request/response encryption: {PAYLOAD_ENCRYPTION_REQUIREMENTS}
- Sensitive data handling: {PII_PHI_PROTECTION_STRATEGY}
- Data retention: {API_DATA_RETENTION_POLICIES}
- Cross-border data: {INTERNATIONAL_DATA_REQUIREMENTS}
- Audit requirements: {API_AUDIT_TRAIL_REQUIREMENTS}

**Security Testing:**
- OWASP API Top 10: {API_SECURITY_TESTING_REQUIREMENTS}
- Penetration testing: {API_PENTEST_SCENARIOS}
- Automated security testing: {API_SECURITY_AUTOMATION}
- Vulnerability scanning: {API_VULN_SCANNING}
- Security monitoring: {API_SECURITY_MONITORING}

**Please add the AI comment: // [AI-Generated-{TOOL}] - Secure API design for {API_PURPOSE}**

API security standards reference: {API_SECURITY_STANDARDS}
```

---

## Security Monitoring & Incident Response

### Security Monitoring Implementation

```
Design a comprehensive security monitoring system for {SYSTEM_NAME} with the following requirements:

**Monitoring Scope:**
- Application layer: {APPLICATION_MONITORING_REQUIREMENTS}
- Infrastructure layer: {INFRASTRUCTURE_MONITORING_SCOPE}
- Network layer: {NETWORK_MONITORING_REQUIREMENTS}
- Data layer: {DATA_ACCESS_MONITORING_SCOPE}
- User behavior: {USER_ACTIVITY_MONITORING_REQUIREMENTS}

**Security Events to Monitor:**
- Authentication events: {AUTH_EVENT_MONITORING}
- Authorization failures: {ACCESS_VIOLATION_MONITORING}
- Data access patterns: {DATA_ACCESS_ANOMALY_DETECTION}
- System changes: {CONFIG_CHANGE_MONITORING}
- Network anomalies: {NETWORK_INTRUSION_DETECTION}

**SIEM Integration:**
- SIEM platform: {SIEM_PLATFORM_PREFERENCE}
- Log aggregation: {LOG_COLLECTION_STRATEGY}
- Event correlation: {EVENT_CORRELATION_RULES}
- Threat intelligence: {THREAT_INTEL_INTEGRATION}
- Compliance reporting: {COMPLIANCE_REPORTING_REQUIREMENTS}

**Alerting & Response:**
- Alert prioritization: {ALERT_SEVERITY_CLASSIFICATION}
- Escalation procedures: {INCIDENT_ESCALATION_MATRIX}
- Automated responses: {AUTOMATED_RESPONSE_ACTIONS}
- Manual procedures: {MANUAL_RESPONSE_PROCEDURES}
- Communication protocols: {INCIDENT_COMMUNICATION_PLAN}

**Monitoring Infrastructure:**
- Data retention: {LOG_RETENTION_REQUIREMENTS}
- Storage requirements: {MONITORING_DATA_STORAGE}
- Performance impact: {MONITORING_PERFORMANCE_CONSTRAINTS}
- Scalability: {MONITORING_SCALABILITY_REQUIREMENTS}
- High availability: {MONITORING_HA_REQUIREMENTS}

**Compliance & Reporting:**
- Regulatory requirements: {COMPLIANCE_MONITORING_REQUIREMENTS}
- Audit trails: {AUDIT_LOG_REQUIREMENTS}
- Forensic capabilities: {DIGITAL_FORENSICS_REQUIREMENTS}
- Reporting automation: {AUTOMATED_COMPLIANCE_REPORTING}
- Evidence preservation: {EVIDENCE_CHAIN_CUSTODY}

**Deliverables:**
1. Security monitoring architecture
2. Event detection rules and correlation logic
3. Dashboard and visualization configurations
4. Alerting and escalation procedures
5. Incident response playbooks
6. Compliance reporting templates
7. Performance and capacity planning
8. Training and operational procedures

**Please add the AI comment: # [AI-Generated-{TOOL}] - Security monitoring for {SYSTEM_NAME}**

Current monitoring capabilities: {EXISTING_MONITORING_SETUP}
```

### Incident Response Plan

```
Create a comprehensive incident response plan for {ORGANIZATION_NAME} covering {INCIDENT_TYPES}:

**Incident Response Scope:**
- Incident types: {DATA_BREACH_MALWARE_DDOS_INSIDER_THREAT}
- Systems covered: {CRITICAL_SYSTEMS_SCOPE}
- Data sensitivity: {DATA_CLASSIFICATION_LEVELS}
- Regulatory requirements: {BREACH_NOTIFICATION_REQUIREMENTS}
- Business impact: {BUSINESS_CONTINUITY_REQUIREMENTS}

**Incident Response Team:**
- Team structure: {IR_TEAM_ROLES_RESPONSIBILITIES}
- Contact information: {ESCALATION_CONTACT_MATRIX}
- External partners: {EXTERNAL_IR_RESOURCES}
- Legal counsel: {LEGAL_NOTIFICATION_REQUIREMENTS}
- Communication team: {PR_COMMUNICATION_STRATEGY}

**Incident Response Phases:**
1. **Preparation** - Plans, training, tools, and documentation
2. **Identification** - Detection and initial assessment
3. **Containment** - Short-term and long-term containment
4. **Eradication** - Remove threat and vulnerabilities
5. **Recovery** - Restore systems and monitor
6. **Lessons Learned** - Post-incident analysis

**Detection & Analysis:**
- Detection capabilities: {INCIDENT_DETECTION_METHODS}
- Initial assessment: {INCIDENT_CLASSIFICATION_CRITERIA}
- Evidence collection: {DIGITAL_FORENSICS_PROCEDURES}
- Impact assessment: {BUSINESS_IMPACT_ANALYSIS}
- Communication protocols: {INTERNAL_EXTERNAL_COMMUNICATION}

**Containment Strategies:**
- Network isolation: {NETWORK_CONTAINMENT_PROCEDURES}
- System shutdown: {EMERGENCY_SHUTDOWN_PROCEDURES}
- Account management: {USER_ACCESS_CONTAINMENT}
- Data protection: {DATA_PRESERVATION_PROCEDURES}
- Vendor coordination: {THIRD_PARTY_CONTAINMENT_COORDINATION}

**Recovery & Post-Incident:**
- System restoration: {RECOVERY_PROCEDURES}
- Monitoring enhanced: {POST_INCIDENT_MONITORING}
- Vulnerability remediation: {REMEDIATION_PROCEDURES}
- Documentation: {INCIDENT_DOCUMENTATION_REQUIREMENTS}
- Lessons learned: {POST_MORTEM_PROCESS}

**Legal & Compliance:**
- Breach notification: {REGULATORY_NOTIFICATION_TIMELINE}
- Law enforcement: {LAW_ENFORCEMENT_COORDINATION}
- Customer notification: {CUSTOMER_BREACH_NOTIFICATION}
- Insurance claims: {CYBER_INSURANCE_PROCEDURES}
- Regulatory reporting: {COMPLIANCE_REPORTING_PROCEDURES}

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Incident response plan for {ORGANIZATION_NAME} -->**

Current incident response capabilities: {EXISTING_IR_CAPABILITIES}
```

---

## Usage Guidelines

### Security Prompt Best Practices

1. **Always specify security requirements** clearly and comprehensively
2. **Include compliance context** relevant to your industry and location
3. **Request security testing approaches** alongside implementation
4. **Specify threat models** and attack scenarios to consider
5. **Always request security review recommendations**

### Security Code Review Process

Before implementing any AI-generated security code:
- [ ] Have qualified security professionals review the code
- [ ] Test security controls thoroughly
- [ ] Verify compliance with security standards
- [ ] Conduct penetration testing if applicable
- [ ] Document security decisions and rationale

### Security Considerations

  **Important Security Warnings:**
- **Never trust AI-generated security code without expert review**
- **Always test security implementations thoroughly**
- **Keep security knowledge current** - AI training may lag behind latest threats
- **Customize recommendations** to your specific threat landscape
- **Maintain security awareness** - AI is a tool, not a replacement for security expertise

---

## Contributing Security Prompts

When adding security prompts:

1. **Focus on specific security domains** (e.g., cryptography, network security)
2. **Include comprehensive threat considerations**
3. **Reference current security standards** and frameworks
4. **Consider regulatory requirements** across different industries
5. **Include testing and validation approaches**
6. **Always emphasize the need for expert review**

Security is too critical to rely solely on AI-generated solutions. These prompts should augment, not replace, security expertise and thorough security practices.