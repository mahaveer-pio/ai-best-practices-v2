# ⚡ Performance Optimization Prompts for Developers

**Optimize your application performance with AI-powered analysis and solutions**

## Frontend Performance Optimization

### 1. **React Application Performance Audit**

```markdown
**Performance Analysis Request**: Analyze and optimize my React application for better performance.

**Application Context**:
- React Version: [VERSION]
- Bundle Size: [CURRENT_SIZE] MB
- Load Time: [CURRENT_LOAD_TIME] seconds
- Lighthouse Score: [PERFORMANCE/ACCESSIBILITY/BEST_PRACTICES/SEO]
- Target Users: [DEVICE_TYPES and connection speeds]

**Current Performance Issues**:
[DESCRIBE_SPECIFIC_ISSUES - slow rendering, large bundle, memory leaks, etc.]

**Code to Analyze**:
[PASTE_PROBLEMATIC_REACT_COMPONENTS]

**Optimization Areas**:
1. **Bundle Optimization**:
   - Code splitting and lazy loading implementation
   - Tree shaking and dead code elimination
   - Dependency analysis and optimization
   - Webpack bundle analyzer recommendations

2. **Rendering Performance**:
   - Re-rendering optimization with React.memo
   - useCallback and useMemo usage optimization
   - Virtual scrolling for large lists
   - Component lifecycle optimization

3. **State Management**:
   - State structure optimization
   - Unnecessary re-renders elimination
   - Context API performance optimization
   - State update batching strategies

4. **Asset Optimization**:
   - Image optimization and lazy loading
   - Font loading optimization
   - CSS-in-JS performance improvements
   - Critical CSS inlining

**Specific Analysis Needed**:
- React DevTools Profiler analysis
- Bundle size breakdown and optimization
- Performance bottleneck identification
- Memory usage and leak detection
- Network request optimization

**Expected Output**:
- Detailed performance audit report
- Optimized code with before/after comparisons
- Bundle optimization configuration
- Performance monitoring setup
- Testing strategy for performance improvements
```

### 2. **Web Vitals Optimization**

```markdown
**Core Web Vitals Improvement**: Optimize my website to meet Google's Core Web Vitals standards.

**Current Web Vitals Scores**:
- Largest Contentful Paint (LCP): [CURRENT_SCORE] (Target: <2.5s)
- First Input Delay (FID): [CURRENT_SCORE] (Target: <100ms)
- Cumulative Layout Shift (CLS): [CURRENT_SCORE] (Target: <0.1)
- First Contentful Paint (FCP): [CURRENT_SCORE]
- Time to Interactive (TTI): [CURRENT_SCORE]

**Website Context**:
[PASTE_WEBSITE_URL or describe application type]

**Optimization Strategy**:
1. **LCP Optimization**:
   - Critical resource loading optimization
   - Server response time improvement
   - Image and video optimization
   - Font loading optimization
   - Above-the-fold content prioritization

2. **FID Optimization**:
   - JavaScript execution time reduction
   - Long task breaking and optimization
   - Third-party script optimization
   - Main thread blocking prevention
   - Input responsiveness improvement

3. **CLS Optimization**:
   - Image and iframe dimension specification
   - Font display optimization
   - Dynamic content insertion handling
   - Advertisement and widget optimization
   - Animation and transition optimization

**Technical Implementation**:
- Resource hints (preload, prefetch, preconnect)
- Critical CSS inlining and non-critical CSS loading
- JavaScript bundle optimization
- Image format optimization (WebP, AVIF)
- Service worker implementation for caching

**Monitoring and Testing**:
- Performance monitoring setup
- Real User Monitoring (RUM) implementation
- Automated performance testing
- Performance regression detection
- A/B testing for performance improvements

**Expected Deliverables**:
- Comprehensive optimization plan
- Optimized code and configuration
- Performance monitoring setup
- Testing and validation procedures
- Ongoing maintenance recommendations
```

## Backend Performance Optimization

### 3. **Database Query Optimization**

```markdown
**Database Performance Tuning**: Optimize database queries and improve application performance.

**Database Context**:
- Database Type: [PostgreSQL/MySQL/MongoDB/etc.]
- Database Size: [NUMBER of records, TOTAL size]
- Current Performance: [QUERY response times, throughput]
- Hardware: [CPU/RAM/STORAGE specifications]

**Problematic Queries**:
[PASTE_SLOW_QUERIES with execution plans if available]

**Performance Issues**:
- Slow query execution times
- High CPU/memory usage
- Lock contention and deadlocks
- Poor connection pool utilization
- Inefficient data access patterns

**Optimization Areas**:
1. **Query Optimization**:
   - SQL query rewriting and optimization
   - Index analysis and creation strategies
   - Execution plan analysis and improvement
   - JOIN optimization and query restructuring
   - Subquery vs JOIN performance comparison

2. **Database Schema Optimization**:
   - Normalization vs denormalization decisions
   - Data type optimization
   - Partitioning strategies implementation
   - Constraint and trigger optimization
   - Archive and purging strategies

3. **Connection and Transaction Management**:
   - Connection pooling optimization
   - Transaction scope reduction
   - Batch processing implementation
   - Prepared statement optimization
   - Connection leak prevention

4. **Caching Strategies**:
   - Query result caching implementation
   - Database-level caching optimization
   - Application-level caching strategies
   - Cache invalidation policies
   - Redis/Memcached integration

**Application Code Analysis**:
[PASTE_ORM_CODE or data access layer code]

**Expected Output**:
- Optimized queries with performance improvements
- Index creation and optimization scripts
- Database configuration tuning recommendations
- Application code optimizations
- Monitoring and alerting setup for database performance
```

### 4. **API Performance Optimization**

```markdown
**API Performance Enhancement**: Optimize API endpoints for better response times and throughput.

**API Context**:
- Framework: [Express/FastAPI/Spring Boot/etc.]
- Current Load: [REQUESTS per second/minute]
- Response Times: [AVERAGE/P95/P99 response times]
- Infrastructure: [SERVER specifications, load balancer setup]

**Performance Bottlenecks**:
[DESCRIBE_SPECIFIC_ISSUES - slow endpoints, high CPU usage, memory leaks, etc.]

**API Code to Analyze**:
[PASTE_API_ENDPOINT_CODE]

**Optimization Strategy**:
1. **Request Processing Optimization**:
   - Request parsing and validation optimization
   - Middleware performance improvement
   - Authentication and authorization caching
   - Input sanitization efficiency
   - Error handling optimization

2. **Business Logic Optimization**:
   - Algorithm complexity reduction
   - Database query optimization
   - External API call optimization
   - Computation-heavy task optimization
   - Memory allocation optimization

3. **Response Optimization**:
   - Response serialization optimization
   - Compression implementation (gzip, Brotli)
   - Response caching strategies
   - Pagination optimization
   - Field selection and filtering

4. **Infrastructure Optimization**:
   - Load balancing strategy improvement
   - Connection pooling optimization
   - CDN integration for static assets
   - Auto-scaling configuration
   - Resource allocation optimization

**Caching Implementation**:
- HTTP caching headers optimization
- Redis/Memcached integration
- Database query caching
- Application-level caching
- CDN edge caching

**Monitoring and Profiling**:
- APM tool integration (New Relic, DataDog, etc.)
- Custom metrics and logging
- Performance testing automation
- Load testing strategy
- Real-time performance monitoring

**Expected Deliverables**:
- Optimized API endpoints with performance improvements
- Caching layer implementation
- Load testing suite and results
- Monitoring and alerting setup
- Performance documentation and guidelines
```

## Application Architecture Performance

### 5. **Microservices Performance Optimization**

```markdown
**Distributed System Performance**: Optimize microservices architecture for better performance and scalability.

**Current Architecture**:
[DESCRIBE_MICROSERVICES_ARCHITECTURE - services, communication patterns, data flow]

**Performance Challenges**:
- High latency in service-to-service communication
- Network overhead and chattiness
- Data consistency performance issues
- Service discovery and load balancing bottlenecks
- Distributed tracing and monitoring gaps

**Optimization Areas**:
1. **Service Communication**:
   - gRPC vs REST performance comparison
   - Message queue optimization for async communication
   - Service mesh implementation (Istio, Linkerd)
   - Connection pooling and keep-alive optimization
   - Circuit breaker pattern for resilience

2. **Data Management**:
   - Database per service optimization
   - CQRS implementation for read/write separation
   - Event sourcing performance optimization
   - Data denormalization strategies
   - Caching strategies across services

3. **Service Design**:
   - Service boundary optimization
   - Aggregate design for performance
   - Batch processing implementation
   - Asynchronous processing patterns
   - Service consolidation opportunities

4. **Infrastructure Optimization**:
   - Container optimization and resource allocation
   - Kubernetes performance tuning
   - Service mesh performance optimization
   - Load balancing strategy optimization
   - Auto-scaling configuration

**Implementation Plan**:
- Service communication optimization
- Data access pattern improvements
- Caching strategy implementation
- Monitoring and observability enhancement
- Performance testing and validation

**Technology Considerations**:
- Service mesh selection and configuration
- Message broker optimization (Kafka, RabbitMQ)
- Database selection and optimization
- Monitoring stack implementation (Prometheus, Grafana)
- Tracing system setup (Jaeger, Zipkin)

**Expected Output**:
- Optimized microservices architecture design
- Performance improvement implementation
- Monitoring and observability setup
- Load testing and validation results
- Documentation and operational guidelines
```

### 6. **Memory and Resource Optimization**

```markdown
**Memory Performance Analysis**: Analyze and optimize memory usage and resource consumption.

**Application Context**:
- Language/Runtime: [Java/Node.js/Python/.NET/etc.]
- Current Memory Usage: [HEAP/NON-HEAP/TOTAL memory usage]
- Performance Issues: [Memory leaks, GC pressure, OOM errors]
- Hardware Constraints: [AVAILABLE RAM, CPU cores]

**Memory Profiling Data**:
[PASTE_MEMORY_PROFILING_RESULTS or heap dump analysis]

**Code to Analyze**:
[PASTE_MEMORY_INTENSIVE_CODE]

**Optimization Strategy**:
1. **Memory Leak Detection**:
   - Object reference analysis
   - Memory leak pattern identification
   - Garbage collection analysis
   - Resource cleanup optimization
   - Event listener and callback cleanup

2. **Memory Usage Optimization**:
   - Data structure selection optimization
   - Object pooling implementation
   - Lazy loading and on-demand allocation
   - Memory-efficient algorithms
   - String and buffer optimization

3. **Garbage Collection Tuning**:
   - GC algorithm selection and tuning
   - Heap size optimization
   - GC pause time minimization
   - Memory allocation pattern optimization
   - Generational GC optimization

4. **Resource Management**:
   - Connection pooling optimization
   - File handle and stream management
   - Thread pool optimization
   - Cache size optimization
   - Resource allocation strategies

**Platform-Specific Optimizations**:
- JVM tuning (Java): Heap sizes, GC algorithms, JIT optimization
- V8 optimization (Node.js): Memory limits, heap snapshots
- Python optimization: Memory profiling, object lifecycle
- .NET optimization: Managed heap, LOH optimization

**Monitoring and Profiling**:
- Memory monitoring setup
- Profiling tool integration
- Memory leak detection automation
- Performance regression testing
- Resource usage alerting

**Expected Deliverables**:
- Memory optimization implementation
- Resource management improvements
- Monitoring and profiling setup
- Performance testing validation
- Documentation and maintenance guidelines
```

## Performance Testing and Monitoring

### 7. **Comprehensive Performance Testing Strategy**

```markdown
**Performance Testing Implementation**: Create a comprehensive performance testing strategy for my application.

**Application Architecture**:
[DESCRIBE_APPLICATION - web app, API, microservices, etc.]

**Performance Requirements**:
- Load Requirements: [CONCURRENT users, REQUESTS per second]
- Response Time SLAs: [AVERAGE/P95/P99 requirements]
- Throughput Requirements: [TRANSACTIONS per minute/hour]
- Availability Requirements: [UPTIME percentage, downtime tolerance]
- Scalability Requirements: [GROWTH projections, scaling factors]

**Testing Strategy**:
1. **Load Testing**:
   - Normal load simulation and baseline establishment
   - Sustained load testing for stability verification
   - User scenario modeling and workflow testing
   - Database and backend system load testing
   - Third-party integration load testing

2. **Stress Testing**:
   - Breaking point identification
   - System behavior under extreme load
   - Resource exhaustion testing
   - Error handling under stress
   - Recovery and failover testing

3. **Volume Testing**:
   - Large dataset processing testing
   - Database performance with high volumes
   - Memory usage under data volume stress
   - Storage and I/O performance testing
   - Data processing pipeline testing

4. **Endurance Testing**:
   - Long-term stability testing
   - Memory leak detection over time
   - Resource degradation monitoring
   - Performance consistency validation
   - System reliability assessment

**Testing Tools and Framework**:
- Load testing tool selection (JMeter, k6, Gatling, etc.)
- Test data generation and management
- Test environment provisioning
- Results analysis and reporting
- Automation and CI/CD integration

**Performance Metrics**:
- Response time percentiles (P50, P95, P99)
- Throughput and transaction rates
- Error rates and success percentages
- Resource utilization (CPU, memory, disk, network)
- Database and external service performance

**Implementation Plan**:
- Test scenario development and scripting
- Test environment setup and configuration
- Baseline performance establishment
- Regression testing automation
- Performance monitoring integration

**Expected Output**:
- Complete performance testing suite
- Automated test execution pipeline
- Performance monitoring and alerting
- Test results analysis and reporting
- Performance optimization recommendations
```

### 8. **Real-Time Performance Monitoring**

```markdown
**Performance Monitoring Setup**: Implement comprehensive real-time performance monitoring for my application.

**Application Context**:
[DESCRIBE_APPLICATION_ARCHITECTURE and critical performance paths]

**Monitoring Requirements**:
1. **Application Performance Monitoring (APM)**:
   - Request tracing and latency monitoring
   - Error rate and exception tracking
   - Database query performance monitoring
   - External service dependency monitoring
   - Business transaction monitoring

2. **Infrastructure Monitoring**:
   - Server resource utilization (CPU, memory, disk, network)
   - Container and Kubernetes metrics
   - Database performance and health
   - Load balancer and CDN performance
   - Network latency and connectivity

3. **User Experience Monitoring**:
   - Real User Monitoring (RUM) implementation
   - Core Web Vitals tracking
   - User journey and conversion monitoring
   - Mobile application performance
   - Geographic performance analysis

4. **Business Metrics**:
   - Feature usage and adoption metrics
   - Performance impact on business KPIs
   - SLA compliance monitoring
   - Revenue and conversion tracking
   - Customer satisfaction metrics

**Technology Stack**:
- APM Platform: [New Relic/DataDog/AppDynamics/Elastic APM/etc.]
- Infrastructure Monitoring: [Prometheus/Grafana/CloudWatch/etc.]
- Log Aggregation: [ELK Stack/Splunk/Fluentd/etc.]
- User Monitoring: [Google Analytics/Hotjar/FullStory/etc.]
- Alerting: [PagerDuty/OpsGenie/Slack/etc.]

**Dashboard and Alerting**:
1. **Executive Dashboard**:
   - High-level business metrics and SLA status
   - Revenue impact and customer satisfaction
   - System availability and performance trends
   - Cost and efficiency metrics

2. **Engineering Dashboard**:
   - Application performance metrics and trends
   - Infrastructure health and capacity
   - Error rates and debugging information
   - Deployment and release impact tracking

3. **Operational Dashboard**:
   - Real-time system health and alerts
   - Performance anomaly detection
   - Capacity planning and resource utilization
   - Incident response and escalation

**Alert Strategy**:
- Alert prioritization and escalation procedures
- Noise reduction and intelligent alerting
- Threshold-based and anomaly detection alerts
- Runbook automation and response procedures
- Integration with incident management systems

**Implementation Plan**:
- Monitoring tool selection and integration
- Metric collection and instrumentation
- Dashboard creation and customization
- Alert configuration and testing
- Team training and adoption procedures

**Expected Deliverables**:
- Complete monitoring infrastructure setup
- Custom dashboards and alerting rules
- Documentation and runbook procedures
- Team training and adoption guidelines
- Performance baseline and improvement tracking
```

## Performance Optimization Best Practices

### **General Optimization Principles**:
1. **Measure First**: Always establish baseline metrics before optimization
2. **Profile Systematically**: Use proper profiling tools to identify bottlenecks
3. **Optimize Iteratively**: Make incremental improvements and measure impact
4. **Focus on Bottlenecks**: Address the most significant performance constraints first
5. **Consider Trade-offs**: Balance performance improvements with complexity and maintainability

### **Common Performance Anti-patterns**:
1. **Premature Optimization**: Optimizing before identifying actual bottlenecks
2. **Over-optimization**: Optimizing beyond business requirements at cost of complexity
3. **Ignoring User Experience**: Focusing on server metrics while ignoring user-perceived performance
4. **Lack of Monitoring**: Implementing optimizations without proper monitoring
5. **One-time Optimization**: Not considering performance as ongoing concern

### **Performance Culture**:
1. **Performance Budgets**: Establish and maintain performance budgets for teams
2. **Automated Testing**: Include performance testing in CI/CD pipelines
3. **Regular Reviews**: Conduct regular performance reviews and audits
4. **Team Education**: Educate team members on performance best practices
5. **Continuous Improvement**: Treat performance optimization as ongoing process

---

**Remember**: Always mark AI-generated performance optimizations with:
```
// [AI-Generated] - Performance optimization for [SPECIFIC_AREA]
// Review required: Validate improvements and test thoroughly before production deployment
```