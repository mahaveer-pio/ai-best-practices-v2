# 🏗️ Tech Lead Architecture Decision Prompts

**Advanced prompts for strategic architectural decisions and technical leadership**

## 🎯 Master Architecture Decision Prompt

```
Act as a senior technical architect and thought leader. I need to make an architecture decision for [ARCHITECTURAL_CHALLENGE].

Use ultrathinking to provide comprehensive architectural guidance:

**Architecture Context:**
- System: [SYSTEM_DESCRIPTION]
- Scale Requirements: [USERS_THROUGHPUT_DATA_VOLUME]
- Technology Constraints: [EXISTING_STACK_LIMITATIONS]
- Team Capabilities: [TEAM_SIZE_SKILLS_EXPERIENCE]
- Timeline: [DELIVERY_CONSTRAINTS]
- Budget: [RESOURCE_LIMITATIONS]
- Business Objectives: [STRATEGIC_GOALS]

**Forensic Architecture Analysis:**

**1. Requirements Deep Dive:**
- What are the functional requirements driving this decision?
- What non-functional requirements (performance, security, scalability) matter most?
- What are the implicit requirements not clearly stated?
- How might requirements evolve over the next 2-3 years?

**2. Alternative Solutions Analysis:**
Think harder about multiple approaches:
- **Option A**: [SOLUTION_1] - Pros, cons, trade-offs
- **Option B**: [SOLUTION_2] - Pros, cons, trade-offs  
- **Option C**: [SOLUTION_3] - Pros, cons, trade-offs
- **Hybrid Approach**: Combination of elements from multiple options

**3. Ultra-Deep Technical Evaluation:**
For each option, analyze:
- **Performance**: Throughput, latency, resource utilization
- **Scalability**: Horizontal vs vertical scaling capabilities
- **Reliability**: Fault tolerance, recovery mechanisms
- **Security**: Attack surfaces, compliance requirements
- **Maintainability**: Code complexity, debugging, monitoring
- **Operational Complexity**: Deployment, configuration, troubleshooting

**4. Strategic Decision Framework:**
- **Technical Debt**: What future refactoring burden does each option create?
- **Team Velocity**: Which option maximizes long-term development speed?
- **Risk Assessment**: What are the highest impact failure modes?
- **Evolution Path**: Which option provides the best foundation for future growth?

**Architectural Decision Record (ADR) Format:**

**Title**: [DECISION_TITLE]

**Status**: Proposed | Accepted | Deprecated | Superseded

**Context**: 
What is the architectural issue we're addressing? What forces are at play?

**Decision**: 
What is the architecture decision and the full justification?

**Consequences**: 
What are the positive and negative consequences of this decision?

**Think Harder Validation:**
- How does this decision align with Conway's Law (team structure influences system design)?
- What assumptions could prove wrong and invalidate this decision?
- How will we measure the success of this architectural choice?
- What early warning signals indicate we need to revisit this decision?

**Implementation Strategy:**
1. **Proof of Concept** (validate key assumptions)
2. **Incremental Migration** (reduce implementation risk)
3. **Success Metrics** (measure decision effectiveness)
4. **Rollback Plan** (what if we need to reverse course)

Use forensic analysis to anticipate long-term implications and provide bulletproof architectural guidance.
```

## 🔍 Specialized Architecture Decision Prompts

### Technology Stack Selection

```
As a technology strategist, help me select the optimal technology stack for [PROJECT_TYPE].

**Technology Decision Context:**
- Project Type: [WEB_APP/MOBILE/API/MICROSERVICES/ETC]
- Team Background: [CURRENT_EXPERTISE]
- Performance Needs: [LATENCY_THROUGHPUT_REQUIREMENTS]  
- Scale Projections: [GROWTH_EXPECTATIONS]
- Integration Requirements: [EXISTING_SYSTEMS]
- Deployment Environment: [CLOUD_ONPREM_HYBRID]

**Ultrathinking Technology Analysis:**

**1. Language/Framework Evaluation:**
For each candidate technology:
- **Development Velocity**: How quickly can team deliver features?
- **Learning Curve**: Time to productivity for current team
- **Ecosystem Maturity**: Library availability, community support
- **Performance Characteristics**: Runtime efficiency, resource usage
- **Scalability Patterns**: How well does it handle growth?
- **Maintenance Burden**: Long-term support and evolution costs

**2. Architecture Pattern Assessment:**
```
Monolith vs Microservices Analysis:
- Team Size and Conway's Law implications
- Deployment and operational complexity
- Development velocity and coordination overhead
- Scalability and fault isolation requirements
- Data consistency and transaction boundaries

Serverless vs Container Assessment:
- Cost models at different scales
- Cold start and performance implications
- Vendor lock-in considerations
- Operational simplicity vs control
- Development and testing workflows
```

**3. Data Architecture Decisions:**
- **Database Selection**: SQL vs NoSQL vs Hybrid approaches
- **Caching Strategy**: In-memory, distributed, edge caching
- **Data Pipeline Architecture**: Batch vs stream processing
- **Consistency Models**: ACID vs BASE vs eventual consistency

**Forensic Technology Analysis:**
Think harder about long-term implications:
- How will this technology choice affect hiring and team growth?
- What happens when this technology becomes legacy (5-10 year outlook)?
- How does vendor/community risk affect long-term viability?
- What migration paths exist if we need to change direction?

**Technology Decision Matrix:**
```
Criteria Weighting:
Development Speed: [WEIGHT]
Team Learning Curve: [WEIGHT]
Performance: [WEIGHT]  
Scalability: [WEIGHT]
Ecosystem Maturity: [WEIGHT]
Long-term Maintenance: [WEIGHT]

Score each option (1-10) against weighted criteria
Calculate total scores and analyze trade-offs
```

**Recommendation Framework:**
1. **Primary Recommendation** (best overall fit)
2. **Alternative Options** (scenarios where they might be better)
3. **Proof of Concept Plan** (validate key assumptions)
4. **Risk Mitigation** (address highest-risk decisions)
5. **Evolution Strategy** (how to adapt as requirements change)

Use ultrathinking to select technologies that optimize for long-term success.
```

### System Design and Scalability

```
As a systems architect, design a scalable architecture for [SYSTEM_REQUIREMENTS].

**System Design Context:**
- System Purpose: [CORE_FUNCTIONALITY]
- Scale Requirements: [USERS_REQUESTS_DATA_VOLUME]
- Availability Requirements: [UPTIME_SLA]
- Consistency Requirements: [STRONG_EVENTUAL_CONSISTENCY]
- Geographic Distribution: [SINGLE_MULTI_REGION]
- Security Requirements: [COMPLIANCE_THREAT_MODEL]

**Ultra-Comprehensive System Design:**

**1. High-Level Architecture:**
```
System Components:
- Load Balancers (L7 application, L4 transport)
- Application Tier (stateless services, horizontal scaling)
- Caching Layer (Redis, Memcached, CDN)
- Database Tier (primary/replica, partitioning strategy)
- Message Queues (async processing, event streaming)
- Storage Systems (object storage, file systems)
- Monitoring/Observability (metrics, logs, traces)
```

**2. Scalability Strategy:**
- **Horizontal Scaling**: Service partitioning, load distribution
- **Vertical Scaling**: Resource optimization, performance tuning
- **Data Partitioning**: Sharding strategies, data locality
- **Caching Architecture**: Multi-level caching, cache invalidation
- **Asynchronous Processing**: Event-driven architecture, queuing systems

**3. Reliability and Fault Tolerance:**
```
Failure Mode Analysis:
- Single Points of Failure identification and elimination
- Circuit Breaker patterns for dependency failures
- Bulkhead isolation to prevent cascading failures
- Graceful degradation strategies
- Disaster recovery and backup strategies

Resilience Patterns:
- Retry mechanisms with exponential backoff
- Timeout and deadline propagation
- Rate limiting and throttling
- Health checks and service discovery
- Blue-green and canary deployment strategies
```

**4. Data Architecture:**
- **Data Storage Strategy**: Polyglot persistence approach
- **Consistency Models**: CAP theorem trade-offs
- **Data Pipeline Design**: ETL vs ELT, real-time vs batch
- **Data Governance**: Schema evolution, data quality, lineage

**Forensic System Analysis:**
Think harder about system behavior:
- How does the system behave under extreme load?
- What happens when critical dependencies fail?
- How do data consistency issues manifest?
- Where are the observability blind spots?
- What security attack vectors exist?

**Capacity Planning:**
```
Performance Modeling:
- Expected request patterns and seasonal variations
- Resource utilization projections (CPU, memory, network, storage)
- Database growth and query performance degradation
- Cache hit ratios and invalidation patterns
- Network bandwidth and latency considerations

Scaling Triggers:
- Metrics-based auto-scaling policies
- Manual intervention thresholds
- Cost optimization constraints
- Performance SLA boundaries
```

**System Design Deliverables:**
1. **Architecture Diagram** (high-level system overview)
2. **Component Specifications** (detailed service definitions)
3. **Data Flow Diagrams** (request/response and async flows)
4. **Scalability Plan** (growth accommodation strategy)
5. **Reliability Analysis** (failure modes and mitigations)
6. **Performance Projections** (capacity planning and bottleneck analysis)

Use ultrathinking to design systems that gracefully handle both expected and unexpected challenges.
```

### Code Review and Technical Standards

```
As a technical lead, establish comprehensive code review standards and practices for [DEVELOPMENT_TEAM].

**Code Review Context:**
- Team Size: [NUMBER_OF_DEVELOPERS]
- Technology Stack: [PRIMARY_TECHNOLOGIES]
- Project Complexity: [SYSTEM_COMPLEXITY_LEVEL]
- Quality Requirements: [QUALITY_STANDARDS]
- Delivery Pressure: [TIMELINE_CONSTRAINTS]
- Team Experience: [JUNIOR_MID_SENIOR_DISTRIBUTION]

**Ultra-Comprehensive Code Review Framework:**

**1. Code Review Standards:**
```
Review Criteria Checklist:

Correctness:
□ Does the code solve the intended problem correctly?
□ Are edge cases handled appropriately?
□ Are error conditions properly addressed?
□ Does the code handle concurrent access correctly?

Design and Architecture:
□ Does the code follow SOLID principles?
□ Is the abstraction level appropriate?
□ Are design patterns used correctly and appropriately?
□ Does the code fit well with existing architecture?

Readability and Maintainability:
□ Is the code self-documenting with clear naming?
□ Is the complexity appropriate for the problem?
□ Are comments helpful and up-to-date?
□ Is the code structured logically?

Performance and Scalability:
□ Are there obvious performance bottlenecks?
□ Is memory usage efficient?
□ Are database queries optimized?
□ Does the code scale with expected load?

Security:
□ Are inputs validated and sanitized?
□ Are authentication and authorization correct?
□ Are sensitive data handled appropriately?
□ Are known security vulnerabilities avoided?
```

**2. Review Process Design:**
Think harder about effective review workflows:
- **Pre-Review Automation**: Linting, formatting, basic security scans
- **Review Assignment**: Subject matter expertise matching
- **Review Depth**: Different standards for different types of changes
- **Feedback Quality**: Constructive, educational, actionable comments
- **Resolution Process**: How to handle disagreements and conflicts

**3. Team Development Through Reviews:**
```
Mentoring Through Reviews:
- Pair junior developers with senior reviewers
- Explain the "why" behind feedback, not just the "what"
- Share alternative approaches and trade-offs
- Point to documentation and learning resources
- Celebrate good practices and improvements

Knowledge Sharing:
- Rotate reviewers to spread knowledge
- Document common issues and solutions
- Create team-specific style guides and patterns
- Share interesting problems and solutions in team meetings
```

**4. Review Efficiency Optimization:**
- **Small, Focused PRs**: Easier to review thoroughly and quickly
- **Clear PR Descriptions**: Context, testing, deployment considerations
- **Automated Checks**: Reduce manual review overhead
- **Review SLAs**: Balance thoroughness with delivery speed
- **Review Metrics**: Track review effectiveness and bottlenecks

**Advanced Code Review Techniques:**

**Risk-Based Review Depth:**
```
High-Risk Changes (Deep Review):
- Security-critical code
- Performance-sensitive paths  
- Complex algorithm implementations
- Integration points with external systems
- Database schema changes

Medium-Risk Changes (Standard Review):
- Business logic implementations
- API endpoint additions
- UI component development
- Configuration changes

Low-Risk Changes (Light Review):
- Documentation updates
- Test additions
- Minor bug fixes
- Cosmetic improvements
```

**Forensic Code Analysis:**
Teach reviewers to think harder about:
- What could go wrong with this code in production?
- How will this code behave under load or with bad data?
- What assumptions is this code making that might not hold?
- How will this code affect system performance and scalability?
- What will maintenance of this code look like in 6 months?

**Code Review Tools and Automation:**
```
Automated Analysis:
- Static analysis tools (SonarQube, CodeClimate)
- Security scanning (Snyk, OWASP dependency check)
- Performance profiling and benchmarking
- Test coverage analysis and requirements

Review Management:
- Pull request templates with review checklists
- Automated reviewer assignment based on code paths
- Review approval policies (number of reviewers, required expertise)
- Integration with CI/CD pipelines
```

**Review Culture Development:**
1. **Psychological Safety** (mistakes are learning opportunities)
2. **Continuous Improvement** (retrospectives on review process)
3. **Recognition** (acknowledge good reviews and code improvements)
4. **Standards Evolution** (adapt standards as team and system mature)
5. **Cross-Team Learning** (share practices with other teams)

Use ultrathinking to build code review practices that improve both code quality and team capabilities.
```

## 🚀 Advanced Technical Leadership

### Technical Debt Management

```
As a technical leader, develop a comprehensive strategy for managing technical debt in [CODEBASE/SYSTEM].

**Technical Debt Context:**
- System Age: [HOW_LONG_IN_DEVELOPMENT]
- Codebase Size: [LINES_OF_CODE_COMPLEXITY_METRICS]
- Team Velocity Impact: [CURRENT_SLOWDOWN_ASSESSMENT]
- Business Pressure: [FEATURE_DELIVERY_EXPECTATIONS]  
- Quality Issues: [BUG_RATES_PRODUCTION_ISSUES]
- Maintenance Burden: [TIME_SPENT_ON_LEGACY_CODE]

**Ultra-Strategic Technical Debt Analysis:**

**1. Technical Debt Inventory:**
```
Debt Categories and Assessment:

Code Debt:
- Duplicated code and logic
- Complex, hard-to-understand functions
- Inconsistent coding patterns and styles
- Missing or outdated documentation
- Poor test coverage and test quality

Design Debt:
- Violations of SOLID principles
- Tight coupling between components
- Missing abstraction layers
- Inappropriate design patterns usage
- Architecture that doesn't match current needs

Infrastructure Debt:
- Outdated dependencies and libraries
- Manual deployment and configuration processes  
- Missing monitoring and observability
- Inadequate development and testing environments
- Security vulnerabilities and compliance gaps
```

**2. Impact Assessment Framework:**
Think harder about debt consequences:
- **Developer Velocity**: How much is debt slowing down feature development?
- **System Reliability**: How is debt affecting production stability?
- **Maintenance Cost**: What percentage of development time goes to debt-related work?
- **Business Risk**: What business opportunities are we missing due to technical limitations?
- **Team Morale**: How is working with legacy code affecting team satisfaction?

**3. Debt Prioritization Matrix:**
```
Priority = (Business Impact × Technical Impact) / (Effort × Risk)

High Priority Debt:
- Critical performance bottlenecks
- Security vulnerabilities
- Code that blocks new feature development
- Components with high change frequency and complexity

Medium Priority Debt:
- Code quality issues affecting maintainability
- Missing tests for important business logic
- Outdated dependencies with known issues
- Process improvements that would boost team efficiency

Low Priority Debt:
- Cosmetic code improvements
- Nice-to-have tooling upgrades
- Documentation gaps in stable, rarely-changed code
```

**4. Debt Reduction Strategy:**
```
Strategic Approaches:

Strangler Fig Pattern:
- Gradually replace old system components
- Build new features using modern patterns
- Incrementally migrate existing functionality
- Maintain system functionality throughout transition

Boy Scout Rule:
- Leave code better than you found it
- Small improvements with every feature
- Continuous debt reduction as part of regular work
- Build debt reduction into definition of done

Dedicated Debt Sprints:
- Scheduled technical debt reduction periods
- Focus on high-impact architectural improvements
- Major refactoring and modernization efforts
- Infrastructure and tooling upgrades
```

**Forensic Debt Analysis:**
Investigate debt root causes:
- Why did this technical debt accumulate?
- What development practices led to debt creation?  
- How can we prevent similar debt in the future?
- What organizational factors contributed to debt accumulation?
- What would different architectural choices have prevented?

**Debt Reduction Implementation:**

**Phase 1: Foundation (Months 1-2)**
- Establish comprehensive test coverage for critical paths
- Set up automated code quality and security scanning
- Document current architecture and debt inventory
- Create development guidelines to prevent new debt

**Phase 2: Strategic Improvements (Months 3-6)**  
- Refactor highest-impact, highest-frequency code paths
- Upgrade critical dependencies and address security issues
- Improve deployment and monitoring infrastructure
- Implement architectural patterns for new development

**Phase 3: Systematic Modernization (Ongoing)**
- Migrate legacy components using strangler fig pattern
- Consolidate duplicated logic and improve abstractions
- Enhance system observability and operational capabilities
- Continuously evolve architecture based on changing needs

**Success Metrics:**
1. **Velocity Metrics** (story points per sprint, cycle time)
2. **Quality Metrics** (defect rates, production incidents)  
3. **Maintenance Metrics** (time spent on bug fixes vs new features)
4. **Developer Experience** (satisfaction surveys, retention rates)
5. **Business Metrics** (time to market, feature delivery consistency)

Use ultrathinking to transform technical debt from a liability into a strategic advantage.
```

---

## 📋 Architecture Decision Checklist

### Decision Planning Phase
- [ ] Clearly define the architectural problem and constraints
- [ ] Identify all stakeholders and their concerns
- [ ] Gather comprehensive requirements (functional and non-functional)
- [ ] Research alternative solutions and approaches
- [ ] Assess team capabilities and organizational constraints

### Analysis Phase
- [ ] Evaluate each option against multiple criteria (performance, scalability, maintainability)
- [ ] Identify risks and mitigation strategies for each approach
- [ ] Consider long-term implications and evolution paths
- [ ] Analyze cost-benefit trade-offs including technical debt
- [ ] Validate assumptions through prototyping or research

### Decision Phase
- [ ] Document decision rationale in Architecture Decision Record (ADR)
- [ ] Get stakeholder buy-in and approval from appropriate decision makers
- [ ] Plan implementation approach with milestones and success criteria
- [ ] Establish monitoring and feedback mechanisms
- [ ] Communicate decision and implications to broader team

### Implementation and Evolution
- [ ] Execute implementation plan with regular progress reviews
- [ ] Monitor success metrics and early warning indicators
- [ ] Adapt approach based on learning and changing requirements
- [ ] Document lessons learned and update decision records
- [ ] Share knowledge and patterns with other teams

**Next Steps**: Explore [Team Leadership Prompts](./team-guidance.md) and [Strategic Planning Prompts](./strategic-planning.md) for comprehensive technical leadership coverage.