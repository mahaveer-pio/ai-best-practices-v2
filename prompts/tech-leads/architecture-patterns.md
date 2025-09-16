# 🏗️ Architecture Patterns & Design Prompts for Tech Leads

**Master software architecture and system design with AI-powered analysis and recommendations**

## System Architecture Design

### 1. **Comprehensive Architecture Assessment**

```markdown
**Architecture Review Request**: Analyze my current system architecture and recommend improvements.

**Current System Overview**:
[DESCRIBE_CURRENT_ARCHITECTURE - include diagrams, tech stack, team size, traffic patterns]

**Business Context**:
- Company Stage: [Startup/Scale-up/Enterprise]
- User Base: [CURRENT_USERS and growth projections]
- Traffic Patterns: [REQUESTS_PER_SECOND/DAY, peak times]
- Performance Requirements: [LATENCY/THROUGHPUT/AVAILABILITY_SLAs]
- Budget Constraints: [INFRASTRUCTURE_BUDGET and team costs]
- Compliance Needs: [GDPR/HIPAA/SOX/PCI/etc.]

**Technical Context**:
- Current Tech Stack: [LANGUAGES/FRAMEWORKS/DATABASES/INFRASTRUCTURE]
- Team Size and Skills: [NUMBER of engineers, experience levels]
- Development Velocity: [RELEASES_PER_WEEK/MONTH]
- Current Pain Points: [SPECIFIC_PROBLEMS being experienced]
- Scaling Challenges: [BOTTLENECKS and performance issues]

**Analysis Framework**:
1. **Architecture Quality Assessment**:
   - Evaluate scalability, maintainability, and performance
   - Identify architectural debt and technical risks
   - Assess compliance with architectural principles (SOLID, DDD, etc.)
   - Review security posture and vulnerability areas

2. **Scalability Analysis**:
   - Current bottlenecks and performance limitations
   - Growth projection and capacity planning
   - Horizontal vs vertical scaling opportunities
   - Database scaling strategies

3. **Technology Alignment**:
   - Tech stack fitness for current and future needs
   - Legacy technology migration opportunities
   - Tool consolidation and standardization potential
   - Team skill alignment with technology choices

4. **Risk Assessment**:
   - Single points of failure identification
   - Business continuity and disaster recovery gaps
   - Security vulnerabilities and compliance risks
   - Vendor lock-in and technology obsolescence risks

**Expected Deliverables**:
- Current state architecture analysis with strengths/weaknesses
- Target state architecture recommendations with timeline
- Migration roadmap with phases and milestones
- Risk mitigation strategies and contingency plans
- Technology evaluation and selection criteria
- Implementation guide with team and resource requirements
```

### 2. **Microservices vs Monolith Decision Framework**

```markdown
**Architecture Pattern Selection**: Help me decide between microservices, modular monolith, or hybrid architecture.

**Project Context**:
- Application Domain: [E-COMMERCE/FINTECH/HEALTHCARE/etc.]
- Team Structure: [NUMBER of teams, SIZE per team, GEOGRAPHIC distribution]
- Development Timeline: [PROJECT duration and delivery milestones]
- Expected Scale: [CONCURRENT users, DATA volume, GEOGRAPHIC regions]
- Organizational Maturity: [DEVOPS capabilities, MONITORING infrastructure]

**Current Constraints**:
- Technical Constraints: [EXISTING systems integration, TECHNOLOGY restrictions]
- Business Constraints: [TIME to market, BUDGET limitations, COMPLIANCE requirements]
- Team Constraints: [SKILL levels, EXPERIENCE with distributed systems, HIRING plans]

**Decision Framework Analysis**:
1. **Complexity Assessment**:
   - Domain complexity and bounded context identification
   - Data consistency requirements and transaction needs
   - Integration complexity with external systems
   - Operational complexity and monitoring requirements

2. **Team and Organization Readiness**:
   - Conway's Law implications for architecture
   - DevOps maturity and CI/CD capabilities
   - Monitoring and observability infrastructure
   - Team autonomy and decision-making processes

3. **Scalability and Performance Requirements**:
   - Independent scaling needs for different components
   - Performance isolation requirements
   - Data partitioning and sharding strategies
   - Global distribution and latency requirements

4. **Risk vs Benefit Analysis**:
   - Development velocity impact
   - Operational complexity increase
   - Technology diversity management
   - Testing and debugging challenges

**Decision Matrix**:
Please provide a structured comparison with:
- Weighted scoring matrix for different architectural patterns
- Implementation timeline and resource requirements
- Risk assessment and mitigation strategies
- Success criteria and measurement approaches
- Recommended architecture with detailed justification

**Implementation Roadmap**:
- Phase-by-phase implementation plan
- Team skill development requirements
- Infrastructure and tooling setup
- Migration strategy if applicable
- Success metrics and monitoring setup
```

### 3. **Event-Driven Architecture Design**

```markdown
**Event-Driven System Design**: Design an event-driven architecture for my application.

**Business Domain**:
[DESCRIBE_BUSINESS_DOMAIN and key business processes]

**Current System Challenges**:
- Tight coupling between components
- Difficulty handling peak loads
- Complex integration requirements
- Need for real-time processing and notifications
- Scalability limitations

**Event-Driven Architecture Requirements**:
1. **Event Identification**:
   - Domain events and business process mapping
   - Event granularity and boundaries
   - Event sourcing vs event streaming considerations
   - Command vs event separation

2. **Event Infrastructure**:
   - Message broker selection (Kafka/RabbitMQ/AWS EventBridge/etc.)
   - Event schema design and evolution
   - Event ordering and delivery guarantees
   - Dead letter queue and error handling

3. **Service Integration**:
   - Choreography vs orchestration patterns
   - Saga pattern for distributed transactions
   - Event-driven microservices communication
   - Legacy system integration strategies

4. **Data Consistency**:
   - Eventual consistency management
   - CQRS (Command Query Responsibility Segregation) implementation
   - Event store design and management
   - Projection and read model strategies

**Design Considerations**:
1. **Performance and Scalability**:
   - Event throughput and latency requirements
   - Partitioning and sharding strategies
   - Consumer scaling and load balancing
   - Backpressure and flow control

2. **Reliability and Fault Tolerance**:
   - Event persistence and durability
   - Failure detection and recovery
   - Circuit breaker and retry patterns
   - Monitoring and alerting strategies

3. **Security and Compliance**:
   - Event encryption and authentication
   - Audit trail and compliance logging
   - Access control and authorization
   - Data privacy and GDPR compliance

**Implementation Plan**:
- Event-driven architecture diagram and documentation
- Technology stack selection and justification
- Implementation phases and timeline
- Migration strategy from current architecture
- Testing and validation approaches
- Operational procedures and runbooks
```

## Design Pattern Implementation

### 4. **Domain-Driven Design (DDD) Implementation**

```markdown
**DDD Implementation**: Apply Domain-Driven Design principles to structure my application.

**Business Domain Analysis**:
[DESCRIBE_BUSINESS_DOMAIN - include stakeholders, processes, rules, and terminology]

**Current System Structure**:
[DESCRIBE_CURRENT_CODE_ORGANIZATION and architectural patterns]

**DDD Implementation Strategy**:
1. **Strategic Design**:
   - Domain and subdomain identification
   - Bounded context mapping and relationships
   - Context map with integration patterns
   - Ubiquitous language development

2. **Tactical Design**:
   - Aggregate design and boundaries
   - Entity and value object identification
   - Domain service implementation
   - Repository pattern application
   - Domain event modeling

3. **Architecture Alignment**:
   - Hexagonal architecture implementation
   - Application service layer design
   - Infrastructure concerns separation
   - Anti-corruption layer design

4. **Implementation Patterns**:
   - Aggregate root design principles
   - Domain model encapsulation
   - Specification pattern usage
   - Factory pattern implementation

**Bounded Context Analysis**:
For each bounded context, provide:
- Context name and purpose
- Core domain entities and value objects
- Domain services and their responsibilities
- Integration points with other contexts
- Database and persistence strategy
- Team ownership and responsibilities

**Implementation Guidelines**:
- Code organization and package structure
- Naming conventions and ubiquitous language
- Testing strategies for domain logic
- Documentation and knowledge sharing
- Team training and adoption approach

**Expected Deliverables**:
- Bounded context map with relationships
- Domain model design and implementation
- Application service layer architecture
- Infrastructure and persistence design
- Testing strategy and implementation examples
- Team guidelines and best practices documentation
```

### 5. **CQRS and Event Sourcing Architecture**

```markdown
**CQRS/Event Sourcing Design**: Implement Command Query Responsibility Segregation with Event Sourcing.

**Application Context**:
[DESCRIBE_APPLICATION - focus on read/write patterns, audit requirements, and scalability needs]

**CQRS/ES Requirements**:
1. **Command Side (Write Model)**:
   - Command validation and processing
   - Aggregate design and event generation
   - Business rule enforcement
   - Concurrency control and optimistic locking

2. **Query Side (Read Model)**:
   - Projection design and implementation
   - Denormalized view creation
   - Query optimization strategies
   - Read model synchronization

3. **Event Store Design**:
   - Event schema design and versioning
   - Event store technology selection
   - Snapshot strategies and optimization
   - Event replay and system recovery

4. **Projection Management**:
   - Projection rebuilding strategies
   - Event handler idempotency
   - Projection versioning and migration
   - Error handling and dead letter queues

**Implementation Considerations**:
1. **Complexity Management**:
   - When to apply CQRS/ES vs simpler patterns
   - Partial implementation strategies
   - Team skill requirements and training
   - Operational complexity implications

2. **Performance Optimization**:
   - Event store performance tuning
   - Projection optimization strategies
   - Caching and read model strategies
   - Query performance optimization

3. **Consistency and Reliability**:
   - Eventual consistency management
   - Event ordering and causality
   - Distributed system failure handling
   - Data recovery and backup strategies

**Technology Stack**:
- Event store selection (EventStore/Kafka/Custom)
- Projection database selection
- Command/query handler frameworks
- Monitoring and observability tools

**Implementation Roadmap**:
- Phase-by-phase implementation plan
- Risk mitigation and rollback strategies
- Team training and skill development
- Success criteria and measurement approaches
- Operational procedures and monitoring setup
```

## Infrastructure Architecture

### 6. **Cloud-Native Architecture Design**

```markdown
**Cloud-Native Transformation**: Design a cloud-native architecture for my application.

**Current State**:
[DESCRIBE_CURRENT_INFRASTRUCTURE - on-premises, cloud, or hybrid setup]

**Cloud Provider**: [AWS/Azure/GCP/Multi-cloud]

**Business Requirements**:
- Scalability: [AUTO-SCALING requirements and traffic patterns]
- Availability: [UPTIME requirements and disaster recovery needs]
- Security: [COMPLIANCE requirements and security controls]
- Cost: [BUDGET constraints and cost optimization priorities]
- Global Reach: [GEOGRAPHIC distribution and latency requirements]

**Cloud-Native Architecture Components**:
1. **Containerization Strategy**:
   - Container orchestration platform (Kubernetes/ECS/AKS/GKE)
   - Container image optimization and security
   - Service mesh implementation (Istio/Linkerd/etc.)
   - Ingress and load balancing strategies

2. **Microservices Design**:
   - Service decomposition strategy
   - API gateway and service discovery
   - Inter-service communication patterns
   - Configuration and secrets management

3. **Data Architecture**:
   - Database selection and managed services
   - Data partitioning and replication strategies
   - Caching layers and content delivery
   - Data pipeline and analytics integration

4. **Observability and Operations**:
   - Monitoring and alerting setup
   - Distributed tracing implementation
   - Log aggregation and analysis
   - Infrastructure as Code (IaC) setup

**Cloud Services Integration**:
1. **Compute Services**:
   - Serverless vs container vs VM selection
   - Auto-scaling policies and strategies
   - Cost optimization techniques
   - Performance optimization approaches

2. **Storage and Data Services**:
   - Managed database services selection
   - Object storage and CDN integration
   - Data backup and disaster recovery
   - Data security and encryption

3. **Security and Compliance**:
   - Identity and access management (IAM)
   - Network security and VPC design
   - Secrets and certificate management
   - Compliance monitoring and reporting

**Migration Strategy**:
- Strangler Fig pattern implementation
- Data migration strategies and tools
- Traffic migration and rollback plans
- Team training and skill development
- Risk mitigation and contingency planning

**Expected Deliverables**:
- Cloud-native architecture diagram and documentation
- Technology selection with justification
- Implementation roadmap with milestones
- Cost analysis and optimization plan
- Security and compliance framework
- Operational procedures and runbooks
```

### 7. **API Architecture and Design**

```markdown
**API Architecture Strategy**: Design a comprehensive API architecture for my platform.

**Platform Context**:
[DESCRIBE_PLATFORM - internal/external APIs, client types, integration needs]

**API Requirements**:
1. **API Design Principles**:
   - RESTful design vs GraphQL vs gRPC selection
   - Resource modeling and URI design
   - HTTP method usage and status codes
   - Content negotiation and versioning

2. **API Gateway Strategy**:
   - Gateway selection and configuration
   - Rate limiting and throttling policies
   - Authentication and authorization
   - Request/response transformation
   - Monitoring and analytics

3. **API Security**:
   - Authentication mechanisms (OAuth 2.0/OpenID Connect)
   - API key management and rotation
   - Input validation and sanitization
   - CORS and security headers
   - API threat protection

4. **API Performance**:
   - Caching strategies and implementation
   - Response optimization and compression
   - Pagination and filtering design
   - Connection pooling and optimization
   - CDN integration for global performance

**API Lifecycle Management**:
1. **Development and Design**:
   - API-first design methodology
   - OpenAPI specification and documentation
   - Mock services and contract testing
   - Code generation and SDK creation

2. **Testing and Quality Assurance**:
   - Contract testing implementation
   - API testing automation
   - Performance and load testing
   - Security testing and penetration testing

3. **Deployment and Operations**:
   - Blue-green deployment strategies
   - API versioning and backward compatibility
   - Monitoring and alerting setup
   - Error handling and debugging

4. **Analytics and Optimization**:
   - API usage analytics and insights
   - Performance monitoring and optimization
   - Developer experience improvements
   - Business metrics and KPI tracking

**Integration Patterns**:
- Event-driven API design
- Webhook and callback implementations
- Batch processing and bulk operations
- Legacy system integration strategies
- Third-party API integration patterns

**Expected Deliverables**:
- API architecture design and documentation
- API gateway configuration and policies
- Security framework and implementation
- Development guidelines and best practices
- Testing strategies and automation setup
- Monitoring and analytics implementation
```

## Performance and Scalability

### 8. **High-Performance System Architecture**

```markdown
**Performance Architecture**: Design a high-performance system architecture for demanding applications.

**Performance Requirements**:
- Response Time: [TARGET_LATENCY - P99, P95, average]
- Throughput: [REQUESTS_PER_SECOND/TRANSACTIONS_PER_MINUTE]
- Concurrency: [CONCURRENT_USERS/CONNECTIONS]
- Availability: [UPTIME_SLA and maximum downtime]
- Scalability: [GROWTH_PROJECTIONS and scaling requirements]

**Current Performance Baseline**:
[DESCRIBE_CURRENT_PERFORMANCE - metrics, bottlenecks, limitations]

**Performance Optimization Strategy**:
1. **Application Layer Optimization**:
   - Code optimization and algorithmic improvements
   - Memory management and garbage collection tuning
   - CPU-intensive operation optimization
   - Asynchronous processing patterns
   - Connection pooling and resource management

2. **Data Layer Optimization**:
   - Database query optimization and indexing
   - Connection pooling and prepared statements
   - Read replicas and write/read separation
   - Sharding and partitioning strategies
   - Caching layers and strategies

3. **Infrastructure Optimization**:
   - Load balancing and traffic distribution
   - Content Delivery Network (CDN) implementation
   - Edge computing and geographic distribution
   - Auto-scaling policies and triggers
   - Resource allocation and capacity planning

4. **Network and Communication**:
   - Protocol optimization (HTTP/2, gRPC, WebSocket)
   - Compression and serialization optimization
   - Connection keep-alive and multiplexing
   - Network latency reduction techniques
   - Bandwidth optimization strategies

**Architecture Patterns for Performance**:
1. **Caching Strategies**:
   - Multi-level caching architecture
   - Cache invalidation and consistency
   - Distributed caching implementations
   - Edge caching and regional distribution

2. **Asynchronous Processing**:
   - Message queue and job processing
   - Event-driven architecture benefits
   - Background task optimization
   - Batch processing strategies

3. **Database Architecture**:
   - CQRS for read/write separation
   - Database clustering and replication
   - NoSQL vs SQL selection criteria
   - Data denormalization strategies

**Monitoring and Optimization**:
- Performance monitoring setup
- Bottleneck identification and analysis
- Capacity planning and forecasting
- Performance testing and benchmarking
- Continuous optimization processes

**Implementation Plan**:
- Performance optimization roadmap
- Technology selection and justification
- Implementation phases and priorities
- Risk assessment and mitigation
- Success metrics and measurement approaches
```

### 9. **Distributed System Design**

```markdown
**Distributed System Architecture**: Design a robust distributed system with fault tolerance and consistency.

**System Requirements**:
- Geographic Distribution: [REGIONS and data center locations]
- Consistency Requirements: [STRONG/EVENTUAL consistency needs]
- Fault Tolerance: [FAILURE scenarios and recovery requirements]
- Network Partitions: [CAP theorem trade-offs and decisions]

**Distributed System Challenges**:
1. **Consistency and Consensus**:
   - Distributed transaction management
   - Consensus algorithms (Raft/PBFT/etc.)
   - Event ordering and causality
   - Conflict resolution strategies

2. **Fault Tolerance and Recovery**:
   - Failure detection and monitoring
   - Graceful degradation strategies
   - Circuit breaker pattern implementation
   - Bulkhead pattern for isolation
   - Retry and backoff strategies

3. **Network and Communication**:
   - Service discovery and registration
   - Load balancing across regions
   - Network partition handling
   - Message ordering and delivery
   - Protocol selection and optimization

4. **Data Management**:
   - Data replication strategies
   - Sharding and partitioning
   - Cross-region data consistency
   - Backup and disaster recovery
   - Data migration and rebalancing

**Design Patterns Implementation**:
1. **Saga Pattern**:
   - Distributed transaction management
   - Compensating actions design
   - Orchestration vs choreography
   - Error handling and rollback

2. **Event Sourcing**:
   - Distributed event store design
   - Event ordering and consistency
   - Projection synchronization
   - Cross-service event handling

3. **CQRS in Distributed Context**:
   - Command routing strategies
   - Query federation approaches
   - Read model synchronization
   - Performance optimization

**Technology Stack**:
- Service mesh (Istio/Linkerd/Consul Connect)
- Message brokers (Kafka/RabbitMQ/NATS)
- Consensus systems (etcd/Consul/ZooKeeper)
- Monitoring and observability tools
- Container orchestration platforms

**Implementation Strategy**:
- Distributed system architecture design
- Technology selection and integration
- Testing strategies for distributed systems
- Deployment and operational procedures
- Monitoring and troubleshooting approaches
```

## Usage Guidelines

### **Architecture Decision Process**:
1. **Gather Requirements**: Thoroughly understand business and technical requirements
2. **Analyze Constraints**: Identify technical, business, and team constraints
3. **Evaluate Options**: Consider multiple architectural approaches and trade-offs
4. **Document Decisions**: Create Architecture Decision Records (ADRs)
5. **Plan Implementation**: Develop phased implementation strategy
6. **Monitor and Evolve**: Continuously assess and improve architecture

### **Best Practices**:
1. **Start Simple**: Begin with simplest architecture that meets requirements
2. **Plan for Change**: Design for extensibility and evolution
3. **Consider Team Skills**: Align architecture complexity with team capabilities
4. **Document Thoroughly**: Maintain comprehensive architecture documentation
5. **Measure Success**: Define and track architectural success metrics

### **Risk Management**:
1. **Identify Risks Early**: Assess technical and business risks upfront
2. **Plan Mitigation**: Develop strategies to address identified risks
3. **Have Fallback Plans**: Prepare alternatives for high-risk decisions
4. **Monitor Continuously**: Track risk indicators and system health
5. **Learn from Failures**: Conduct post-mortems and improve processes

---

**Remember**: Always mark AI-generated architecture recommendations with:
```
// [AI-Generated] - Architecture recommendation for [SPECIFIC_COMPONENT]
// Review required: Validate against business requirements and technical constraints
```