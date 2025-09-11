---
title: Architecture & Design Prompts  
audience: Developers, Architects, Tech Leads
purpose: AI-assisted system design and architectural decisions
---

# Architecture & Design Prompts

This collection provides tested prompts for AI-assisted architectural design, system planning, and technical decision making. Use these to get expert-level architectural guidance while maintaining consistency with your project goals.

## Architectural Planning

### System Design & Architecture

```
Design a system architecture for {PROJECT_NAME} with the following requirements:

**Functional Requirements:**
- Core features: {LIST_CORE_FEATURES}
- User types: {USER_ROLES_AND_PERMISSIONS}
- Expected load: {CONCURRENT_USERS} users, {REQUESTS_PER_SECOND} req/sec
- Data volume: {DATA_ESTIMATES}
- Geographic distribution: {REGIONS_OR_GLOBAL}

**Non-Functional Requirements:**
- Availability: {UPTIME_REQUIREMENT} (e.g., 99.9%)
- Performance: {RESPONSE_TIME_REQUIREMENTS}
- Scalability: {SCALING_EXPECTATIONS}
- Security: {SECURITY_REQUIREMENTS}
- Compliance: {REGULATORY_REQUIREMENTS}

**Technical Constraints:**
- Technology stack preferences: {PREFERRED_TECHNOLOGIES}
- Cloud provider: {CLOUD_PROVIDER} or on-premise
- Budget constraints: {BUDGET_CONSIDERATIONS}
- Team expertise: {TEAM_SKILL_LEVELS}
- Legacy system integration: {EXISTING_SYSTEMS}

**Deliverables Requested:**
1. High-level system architecture diagram
2. Component breakdown with responsibilities
3. Data flow diagrams
4. Technology stack recommendations
5. Deployment architecture
6. Security architecture overview
7. Scalability strategy
8. Monitoring and observability plan

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - {PROJECT_NAME} system architecture design -->**

Consider these architectural patterns: {SUGGEST_PATTERNS_TO_EVALUATE}
```

### Microservices Architecture Design

```
Design a microservices architecture for {BUSINESS_DOMAIN} with the following specifications:

**Business Context:**
- Domain: {BUSINESS_DOMAIN_DESCRIPTION}
- Business capabilities: {LIST_BUSINESS_CAPABILITIES}
- Team structure: {TEAM_ORGANIZATION}
- Release frequency: {DEPLOYMENT_CADENCE}

**Service Boundaries:**
- Identify service boundaries using Domain-Driven Design
- Define bounded contexts for: {LIST_SUBDOMAIN_AREAS}
- Specify data ownership per service
- Design inter-service communication patterns

**Technical Decisions:**
- Communication style: {SYNC_VS_ASYNC_PREFERENCES}
- Data consistency: {CONSISTENCY_REQUIREMENTS}
- Service mesh: {SERVICE_MESH_PREFERENCE}
- API Gateway: {GATEWAY_REQUIREMENTS}
- Event sourcing needs: {EVENT_SOURCING_REQUIREMENTS}

**Infrastructure Requirements:**
- Container orchestration: {KUBERNETES_OR_ALTERNATIVES}
- Service discovery: {SERVICE_DISCOVERY_STRATEGY}
- Configuration management: {CONFIG_MANAGEMENT}
- Monitoring and tracing: {OBSERVABILITY_STACK}
- CI/CD pipeline: {DEPLOYMENT_STRATEGY}

**Deliverables:**
1. Service catalog with responsibilities
2. API contracts and schemas
3. Event schemas and messaging patterns
4. Deployment topology
5. Service-to-service dependencies
6. Data architecture and ownership
7. Security boundaries and authentication
8. Monitoring and alerting strategy

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Microservices architecture for {BUSINESS_DOMAIN} -->**

Reference architecture: {PROVIDE_SIMILAR_ARCHITECTURE_EXAMPLE}
```

---

## Database Architecture

### Database Design & Strategy

```
Design a database architecture for {APPLICATION_TYPE} with these requirements:

**Data Requirements:**
- Entities: {LIST_MAIN_ENTITIES}
- Relationships: {DESCRIBE_ENTITY_RELATIONSHIPS}
- Data volume: {CURRENT_SIZE} growing at {GROWTH_RATE}
- Query patterns: {DESCRIBE_COMMON_QUERIES}
- Reporting needs: {ANALYTICS_REQUIREMENTS}

**Performance Requirements:**
- Read vs Write ratio: {READ_WRITE_RATIO}
- Response time: {QUERY_PERFORMANCE_TARGETS}
- Concurrent users: {CONCURRENT_USER_ESTIMATES}
- Peak load scenarios: {PEAK_LOAD_DESCRIPTION}

**Technical Constraints:**
- Database preference: {SQL_OR_NOSQL_PREFERENCE}
- ACID requirements: {TRANSACTION_REQUIREMENTS}
- Consistency needs: {CONSISTENCY_MODEL}
- Geographic distribution: {MULTI_REGION_REQUIREMENTS}
- Backup/recovery: {RTO_RPO_REQUIREMENTS}

**Deliverables:**
1. Logical data model (ERD or document model)
2. Physical database design
3. Indexing strategy
4. Partitioning/sharding plan
5. Caching strategy
6. Backup and disaster recovery plan
7. Performance optimization recommendations
8. Migration strategy from existing system

**Please add the AI comment: -- [AI-Generated-{TOOL}] - Database architecture for {APPLICATION_TYPE}**

Current system context: {DESCRIBE_CURRENT_DATABASE_SETUP}
```

### Data Pipeline Architecture

```
Design a data pipeline architecture for {DATA_PURPOSE} with the following specifications:

**Data Sources:**
- Input sources: {LIST_DATA_SOURCES}
- Data formats: {INPUT_FORMATS}
- Data volume: {VOLUME_PER_TIME_PERIOD}
- Data velocity: {REAL_TIME_OR_BATCH}
- Data quality expectations: {QUALITY_REQUIREMENTS}

**Processing Requirements:**
- Transformations: {DESCRIBE_TRANSFORMATIONS}
- Business rules: {VALIDATION_AND_ENRICHMENT_RULES}
- Processing latency: {LATENCY_REQUIREMENTS}
- Error handling: {ERROR_HANDLING_STRATEGY}
- Data lineage: {TRACKING_REQUIREMENTS}

**Output Requirements:**
- Destinations: {LIST_OUTPUT_SYSTEMS}
- Output formats: {REQUIRED_OUTPUT_FORMATS}
- Update frequency: {REFRESH_SCHEDULE}
- Data retention: {RETENTION_POLICIES}

**Technical Stack:**
- Cloud platform: {PREFERRED_CLOUD_PROVIDER}
- Stream processing: {STREAMING_TECHNOLOGY_PREFERENCE}
- Batch processing: {BATCH_PROCESSING_PREFERENCE}
- Data storage: {DATA_LAKE_WAREHOUSE_PREFERENCES}
- Orchestration: {WORKFLOW_ORCHESTRATION_TOOL}

**Deliverables:**
1. Data flow architecture diagram
2. Processing pipeline design
3. Data schema and transformations
4. Error handling and monitoring plan
5. Scalability and performance strategy
6. Data governance and quality measures
7. Deployment and operations plan

**Please add the AI comment: # [AI-Generated-{TOOL}] - Data pipeline architecture for {DATA_PURPOSE}**

Integration constraints: {DESCRIBE_EXISTING_DATA_INFRASTRUCTURE}
```

---

## API Architecture

### API Design Strategy

```
Design an API architecture for {API_PURPOSE} following these specifications:

**API Requirements:**
- Use cases: {LIST_PRIMARY_USE_CASES}
- Consumers: {DESCRIBE_API_CONSUMERS}
- Expected load: {REQUEST_VOLUME_ESTIMATES}
- Response time: {PERFORMANCE_TARGETS}
- Data sensitivity: {SECURITY_CLASSIFICATION}

**Design Approach:**
- API style: {REST_GRAPHQL_GRPC_PREFERENCE}
- Resource modeling: {DESCRIBE_MAIN_RESOURCES}
- Versioning strategy: {VERSIONING_APPROACH}
- Authentication: {AUTH_MECHANISM}
- Rate limiting: {RATE_LIMITING_REQUIREMENTS}

**Technical Specifications:**
- Request/response formats: {DATA_FORMAT_PREFERENCES}
- Error handling: {ERROR_RESPONSE_STRATEGY}
- Caching: {CACHING_REQUIREMENTS}
- Documentation: {API_DOCUMENTATION_NEEDS}
- Testing: {API_TESTING_STRATEGY}

**Integration Requirements:**
- Backend services: {DESCRIBE_BACKEND_INTEGRATIONS}
- Third-party APIs: {EXTERNAL_DEPENDENCIES}
- Event publishing: {EVENT_DRIVEN_REQUIREMENTS}
- Monitoring: {OBSERVABILITY_NEEDS}

**Deliverables:**
1. API specification (OpenAPI/GraphQL schema)
2. Resource model and endpoint design
3. Authentication and authorization model
4. Error handling and status codes
5. Rate limiting and quota design
6. Caching and performance strategy
7. Versioning and backward compatibility plan
8. Integration architecture

**Please add the AI comment: // [AI-Generated-{TOOL}] - API architecture for {API_PURPOSE}**

Existing API patterns to follow: {REFERENCE_EXISTING_APIS}
```

---

## Security Architecture

### Security Design Framework

```
Design a comprehensive security architecture for {APPLICATION_TYPE} with these requirements:

**Security Context:**
- Application type: {WEB_MOBILE_API_DESCRIPTION}
- Data classification: {PUBLIC_INTERNAL_CONFIDENTIAL_RESTRICTED}
- User types: {USER_CATEGORIES_AND_ACCESS_LEVELS}
- Compliance requirements: {GDPR_HIPAA_SOX_OTHER}
- Threat landscape: {KNOWN_THREATS_AND_RISKS}

**Authentication & Authorization:**
- Identity providers: {IDP_PREFERENCES}
- Authentication methods: {MFA_SSO_REQUIREMENTS}
- Authorization model: {RBAC_ABAC_ACL_PREFERENCE}
- Session management: {SESSION_REQUIREMENTS}
- API security: {API_AUTH_STRATEGY}

**Data Protection:**
- Encryption at rest: {DATA_ENCRYPTION_REQUIREMENTS}
- Encryption in transit: {COMMUNICATION_ENCRYPTION}
- Key management: {KEY_MANAGEMENT_STRATEGY}
- Data masking: {PII_PROTECTION_REQUIREMENTS}
- Backup security: {BACKUP_ENCRYPTION_NEEDS}

**Infrastructure Security:**
- Network segmentation: {NETWORK_SECURITY_REQUIREMENTS}
- Container security: {CONTAINER_SECURITY_NEEDS}
- Cloud security: {CLOUD_SECURITY_CONFIGURATION}
- Secrets management: {SECRETS_HANDLING_STRATEGY}
- Monitoring: {SECURITY_MONITORING_REQUIREMENTS}

**Deliverables:**
1. Security architecture diagram
2. Authentication and authorization flows
3. Data protection and encryption strategy
4. Network security design
5. Security controls matrix
6. Threat model and risk assessment
7. Incident response plan outline
8. Compliance mapping

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Security architecture for {APPLICATION_TYPE} -->**

Regulatory context: {SPECIFIC_COMPLIANCE_REQUIREMENTS}
```

---

## Performance Architecture

### Performance & Scalability Design

```
Design a performance and scalability architecture for {SYSTEM_NAME} with these specifications:

**Performance Requirements:**
- Response time targets: {RESPONSE_TIME_TARGETS}
- Throughput requirements: {THROUGHPUT_TARGETS}
- Concurrent users: {USER_LOAD_EXPECTATIONS}
- Peak load scenarios: {PEAK_LOAD_DESCRIPTION}
- Geographic performance: {GLOBAL_PERFORMANCE_REQUIREMENTS}

**Scalability Requirements:**
- Growth projections: {GROWTH_EXPECTATIONS}
- Scaling patterns: {HORIZONTAL_VERTICAL_PREFERENCES}
- Auto-scaling triggers: {SCALING_CRITERIA}
- Cost constraints: {COST_OPTIMIZATION_PRIORITIES}
- Resource limitations: {RESOURCE_CONSTRAINTS}

**Architecture Patterns:**
- Caching strategy: {CACHING_REQUIREMENTS}
- Load balancing: {LOAD_BALANCING_NEEDS}
- Content delivery: {CDN_REQUIREMENTS}
- Database optimization: {DB_PERFORMANCE_STRATEGY}
- Asynchronous processing: {ASYNC_PROCESSING_NEEDS}

**Monitoring & Optimization:**
- Performance metrics: {KEY_PERFORMANCE_INDICATORS}
- Bottleneck identification: {MONITORING_STRATEGY}
- Alerting: {PERFORMANCE_ALERTING_NEEDS}
- Optimization process: {CONTINUOUS_OPTIMIZATION_APPROACH}

**Deliverables:**
1. Performance architecture diagram
2. Caching strategy and implementation
3. Load balancing and scaling design
4. Database performance optimization plan
5. Monitoring and alerting setup
6. Performance testing strategy
7. Capacity planning model
8. Cost optimization recommendations

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Performance architecture for {SYSTEM_NAME} -->**

Current performance baseline: {EXISTING_PERFORMANCE_METRICS}
```

---

## Technology Selection

### Technology Stack Evaluation

```
Evaluate and recommend a technology stack for {PROJECT_TYPE} based on these criteria:

**Project Context:**
- Project type: {WEB_APP_API_MOBILE_DESKTOP}
- Team size: {TEAM_SIZE_AND_COMPOSITION}
- Timeline: {PROJECT_TIMELINE_CONSTRAINTS}
- Budget: {BUDGET_CONSTRAINTS}
- Maintenance window: {LONG_TERM_MAINTENANCE_EXPECTATIONS}

**Technical Requirements:**
- Performance needs: {PERFORMANCE_REQUIREMENTS}
- Scalability expectations: {SCALING_REQUIREMENTS}
- Integration needs: {SYSTEMS_TO_INTEGRATE_WITH}
- Security requirements: {SECURITY_CONSTRAINTS}
- Platform targets: {DEPLOYMENT_PLATFORMS}

**Team & Organizational Factors:**
- Existing expertise: {CURRENT_TEAM_SKILLS}
- Learning curve acceptance: {TRAINING_BUDGET_AND_TIME}
- Hiring considerations: {TALENT_AVAILABILITY_IN_AREA}
- Enterprise standards: {ORGANIZATIONAL_TECHNOLOGY_STANDARDS}
- Support requirements: {SUPPORT_AND_MAINTENANCE_NEEDS}

**Evaluation Criteria:**
- Technical fit (40%): {TECHNICAL_EVALUATION_CRITERIA}
- Team fit (25%): {TEAM_CAPABILITY_CRITERIA}  
- Ecosystem (20%): {ECOSYSTEM_AND_COMMUNITY_CRITERIA}
- Cost (15%): {TOTAL_COST_OF_OWNERSHIP_FACTORS}

**Deliverables:**
1. Technology comparison matrix
2. Recommended primary stack with rationale
3. Alternative options with trade-offs
4. Learning and adoption plan
5. Risk assessment and mitigation
6. Cost-benefit analysis
7. Implementation roadmap
8. Success metrics and evaluation plan

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Technology stack evaluation for {PROJECT_TYPE} -->**

Technologies to evaluate: {LIST_TECHNOLOGIES_TO_CONSIDER}
```

---

## Integration Architecture

### Systems Integration Design

```
Design an integration architecture to connect {SYSTEM_A} with {SYSTEM_B} and related systems:

**Integration Context:**
- Source systems: {LIST_SOURCE_SYSTEMS_AND_CAPABILITIES}
- Target systems: {LIST_TARGET_SYSTEMS_AND_REQUIREMENTS}
- Data flow direction: {UNIDIRECTIONAL_BIDIRECTIONAL}
- Integration frequency: {REAL_TIME_BATCH_SCHEDULED}
- Business criticality: {BUSINESS_IMPACT_CLASSIFICATION}

**Data Requirements:**
- Data types: {DESCRIBE_DATA_TYPES_AND_FORMATS}
- Data volume: {VOLUME_ESTIMATES}
- Data transformation: {TRANSFORMATION_REQUIREMENTS}
- Data quality: {QUALITY_AND_VALIDATION_NEEDS}
- Error handling: {ERROR_RECOVERY_STRATEGY}

**Integration Patterns:**
- Communication style: {SYNC_ASYNC_EVENT_DRIVEN}
- Message formats: {JSON_XML_BINARY_PREFERENCES}
- Protocol preferences: {HTTP_MESSAGING_FILE_BASED}
- Security requirements: {ENCRYPTION_AUTH_REQUIREMENTS}
- Reliability needs: {DELIVERY_GUARANTEES}

**Technical Architecture:**
- Integration platform: {ESB_API_GATEWAY_CUSTOM}
- Message broker: {MESSAGE_QUEUE_REQUIREMENTS}
- Data transformation: {ETL_STREAMING_REQUIREMENTS}  
- Monitoring: {INTEGRATION_MONITORING_NEEDS}
- Deployment: {DEPLOYMENT_AND_SCALING_STRATEGY}

**Deliverables:**
1. Integration architecture diagram
2. Data mapping specifications
3. API contracts and message schemas
4. Error handling and retry logic
5. Security and authentication design
6. Monitoring and alerting plan
7. Testing strategy
8. Rollback and disaster recovery plan

**Please add the AI comment: <!-- [AI-Generated-{TOOL}] - Integration architecture for {SYSTEM_A} to {SYSTEM_B} -->**

Existing integration patterns: {DESCRIBE_CURRENT_INTEGRATION_APPROACH}
```

---

## Usage Guidelines

### Prompt Customization

1. **Replace all placeholders** in `{CURLY_BRACES}` with your specific context
2. **Provide detailed requirements** rather than high-level descriptions
3. **Include constraints and preferences** to guide the AI's recommendations
4. **Reference existing systems** to maintain consistency
5. **Specify deliverable formats** that work for your team

### Best Practices for Architectural AI Assistance

- **Start with context** - Provide comprehensive background information
- **Be explicit about constraints** - Technical, budget, team, and timeline limitations
- **Request multiple options** - Ask for alternatives with trade-off analysis
- **Ask for rationale** - Understand why specific recommendations are made
- **Include implementation considerations** - Ask about practical aspects
- **Request validation approaches** - How to verify the architecture works

### Review Checklist

Before implementing AI-recommended architecture:
- [ ] Architecture aligns with business requirements
- [ ] Technical decisions are justified and documented
- [ ] Scalability and performance needs are addressed
- [ ] Security requirements are comprehensively covered
- [ ] Team capabilities and constraints are considered
- [ ] Integration points are clearly defined
- [ ] Monitoring and observability are planned
- [ ] Risk mitigation strategies are included
- [ ] Implementation roadmap is realistic
- [ ] Success metrics are defined

---

## Contributing Architecture Prompts

When adding new architecture prompts:

1. **Focus on specific architectural domains** (e.g., event-driven architecture, serverless design)
2. **Include comprehensive requirement gathering** in the prompt structure
3. **Request both high-level and detailed deliverables**
4. **Consider multiple stakeholder perspectives** (developers, ops, security, business)
5. **Include validation and review criteria**
6. **Test prompts with different AI tools** to ensure quality output

The goal is to get architecture guidance that's actionable, comprehensive, and tailored to your specific context and constraints.