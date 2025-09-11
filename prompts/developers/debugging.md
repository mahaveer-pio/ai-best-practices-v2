# 🐛 Developer Debugging Prompts

**Advanced forensic debugging techniques for rapid problem resolution**

## 🔍 Master Debugging Prompt

```
Act as a senior debugging specialist with forensic analysis expertise. I'm experiencing [BUG_DESCRIPTION] in [SYSTEM_COMPONENT].

Perform ultrathinking debugging analysis:

**Bug Context:**
- System: [DESCRIBE_SYSTEM]
- Error Message: [EXACT_ERROR_MESSAGE]
- Reproduction Steps: [STEP_BY_STEP_REPRODUCTION]
- Environment: [DEVELOPMENT/STAGING/PRODUCTION]
- Technology Stack: [FULL_STACK_DETAILS]
- Recent Changes: [CODE_CHANGES_TIMELINE]

**Forensic Debugging Process:**

**1. Evidence Collection:**
- Analyze error messages and stack traces
- Examine system logs and monitoring data
- Review recent code changes and deployments
- Check configuration and environment variables

**2. Root Cause Analysis:**
- Trace the complete execution path
- Identify all potential contributing factors
- Map data flow and transformation points
- Analyze timing and concurrency issues

**3. Hypothesis Formation:**
- Generate multiple potential root causes
- Rank hypotheses by probability and impact
- Design targeted experiments to test each theory

**4. Solution Strategy:**
- Provide immediate mitigation options
- Design comprehensive fix with validation
- Plan prevention strategies for similar issues

**Think Harder About:**
- Non-obvious interactions between components
- Race conditions and timing-dependent bugs
- Memory leaks and resource exhaustion
- Configuration drift and environment differences
- Edge cases in data processing

**Deliverables:**
1. **Root Cause Analysis** (detailed investigation findings)
2. **Immediate Fix** (code changes to resolve the issue)
3. **Testing Strategy** (how to validate the fix)
4. **Prevention Measures** (avoid similar issues)
5. **Monitoring Enhancements** (early detection improvements)
6. **Documentation** (incident post-mortem and lessons learned)

Use forensic debugging to uncover hidden causes and provide bulletproof solutions.
```

## 🚨 Emergency Production Debugging

```
**PRODUCTION INCIDENT RESPONSE**

As an incident response expert, help resolve this production issue with minimal downtime:

**Incident Details:**
- Severity: [CRITICAL/HIGH/MEDIUM/LOW]
- Impact: [USER_IMPACT_DESCRIPTION]
- Timeline: [WHEN_STARTED]
- Symptoms: [OBSERVABLE_SYMPTOMS]
- System Load: [PERFORMANCE_METRICS]

**Emergency Forensic Protocol:**

**Phase 1: Immediate Stabilization**
Think harder about immediate actions:
1. **Damage Assessment** (scope of impact, affected users)
2. **Quick Mitigation** (traffic routing, feature flags, rollback options)
3. **Resource Scaling** (auto-scaling, manual intervention)
4. **Communication Plan** (stakeholder notifications)

**Phase 2: Root Cause Investigation**
Ultrathinking investigation approach:
1. **Timeline Reconstruction** (what changed when)
2. **System State Analysis** (logs, metrics, traces)
3. **Dependency Mapping** (upstream/downstream impacts)
4. **Load Pattern Analysis** (traffic anomalies, user behavior)

**Phase 3: Permanent Resolution**
1. **Code Fix Development** (targeted, minimal change)
2. **Testing in Staging** (reproduction and validation)
3. **Gradual Deployment** (canary release, monitoring)
4. **Post-Incident Review** (lessons learned, prevention)

**Emergency Toolkit:**
- Immediate rollback commands
- Traffic diversion strategies
- Performance tuning quick wins
- Database query optimization
- Cache invalidation procedures
- Feature flag toggles

**Deliverables:**
1. **Immediate Action Plan** (stabilization steps)
2. **Root Cause Report** (detailed analysis)
3. **Fix Implementation** (tested code changes)
4. **Deployment Strategy** (safe release plan)
5. **Prevention Roadmap** (systemic improvements)
6. **Incident Post-Mortem** (blameless analysis)

Focus on speed and safety - think harder about rollback scenarios at every step.
```

## 🔧 Specialized Debugging Scenarios

### Performance Debugging

```
As a performance optimization expert, help debug slow performance in [SYSTEM_COMPONENT].

**Performance Issue Context:**
- Symptom: [SPECIFIC_PERFORMANCE_PROBLEM]
- Metrics: [RESPONSE_TIMES_THROUGHPUT]
- Load Patterns: [TRAFFIC_CHARACTERISTICS]
- Infrastructure: [HARDWARE_CLOUD_SPECS]
- Baseline Performance: [PREVIOUS_BENCHMARKS]

**Performance Forensics:**

**1. Profiling Strategy:**
- CPU profiling (hot spots, function call frequency)
- Memory profiling (allocations, garbage collection)
- I/O profiling (disk, network, database)
- Application-level metrics (business logic bottlenecks)

**2. Ultrathinking Analysis:**
- Query performance analysis (N+1 problems, missing indexes)
- Caching effectiveness (hit rates, cache invalidation)
- Algorithm complexity review (O(n²) vs O(log n) operations)
- Resource contention analysis (database locks, thread pools)
- Network latency investigation (service-to-service communication)

**3. Deep Performance Investigation:**
- Memory leak detection and prevention
- Database query optimization with execution plans
- Microservice communication patterns
- Frontend performance bottlenecks
- Third-party service dependencies

**Diagnostic Tools and Commands:**
```bash
# System-level profiling
top, htop, iotop, vmstat, iostat

# Application profiling
[LANGUAGE_SPECIFIC_PROFILERS]

# Database analysis
EXPLAIN ANALYZE [SQL_QUERY]
pg_stat_activity, SHOW PROCESSLIST

# Network analysis
tcpdump, wireshark, netstat
```

**Performance Fix Deliverables:**
1. **Bottleneck Identification** (specific performance culprits)
2. **Optimization Strategies** (code, database, infrastructure)
3. **Implementation Plan** (prioritized improvements)
4. **Performance Tests** (before/after benchmarks)
5. **Monitoring Setup** (ongoing performance tracking)
6. **Scaling Recommendations** (horizontal/vertical scaling)

Think harder about cascading performance impacts across the entire system.
```

### Memory Leak Investigation

```
As a memory management expert, investigate and fix memory leaks in [APPLICATION_COMPONENT].

**Memory Issue Context:**
- Memory Growth Pattern: [GRADUAL/SUDDEN/SPIKY]
- Memory Usage Metrics: [CURRENT_USAGE_TRENDS]
- Application Runtime: [RUNTIME_ENVIRONMENT]
- Memory Symptoms: [OUT_OF_MEMORY_ERRORS]

**Memory Forensics Protocol:**

**1. Memory Profiling:**
- Heap dump analysis
- Object allocation tracking
- Garbage collection patterns
- Memory pool utilization

**2. Ultrathinking Leak Detection:**
- Static reference analysis (objects not being released)
- Event listener accumulation
- Closure capture of large objects
- Database connection pooling issues
- File handle leaks
- Timer/interval cleanup

**3. Memory Pattern Analysis:**
```
Think harder about memory anti-patterns:
- Circular references preventing garbage collection
- Large object caching without eviction policies
- Inappropriate singleton usage
- Event listener accumulation
- Promise/callback chains holding references
- Global variable proliferation
```

**Memory Debugging Tools:**
```bash
# Language-specific memory tools
Java: jstat, jmap, jhstack, VisualVM
Node.js: --inspect, clinic.js, heapdump
Python: memory_profiler, objgraph, tracemalloc
C++: valgrind, AddressSanitizer
```

**Leak Fix Strategy:**
1. **Memory Pattern Identification** (specific leak patterns)
2. **Reference Cleanup** (proper object disposal)
3. **Resource Management** (try/finally, RAII patterns)
4. **Testing Strategy** (memory stress tests)
5. **Monitoring Setup** (memory alerts and tracking)
6. **Prevention Guidelines** (coding standards updates)

Perform forensic analysis of object lifecycle management and provide foolproof cleanup strategies.
```

### Database Debugging

```
As a database performance specialist, debug [DATABASE_ISSUE_TYPE] in [DATABASE_SYSTEM].

**Database Issue Context:**
- Database System: [MYSQL/POSTGRESQL/MONGODB/ETC]
- Issue Type: [SLOW_QUERIES/DEADLOCKS/CONNECTION_ISSUES/DATA_CORRUPTION]
- Query Patterns: [READ_HEAVY/WRITE_HEAVY/MIXED]
- Data Volume: [TABLE_SIZES_GROWTH_RATE]
- Infrastructure: [CLOUD_PROVIDER_SPECS]

**Database Forensics:**

**1. Query Performance Analysis:**
```sql
-- Query execution plan analysis
EXPLAIN ANALYZE [PROBLEMATIC_QUERY];

-- Index usage statistics
SELECT * FROM pg_stat_user_indexes WHERE schemaname = 'public';

-- Lock analysis
SELECT * FROM pg_locks WHERE granted = false;

-- Connection analysis
SELECT state, count(*) FROM pg_stat_activity GROUP BY state;
```

**2. Ultrathinking Database Investigation:**
- Index strategy analysis (missing, unused, over-indexing)
- Query optimization opportunities (joins, subqueries, CTEs)
- Transaction isolation level impacts
- Connection pooling effectiveness
- Replication lag and consistency issues

**3. Deep Database Debugging:**
- Deadlock detection and resolution
- Table bloat and vacuum strategies
- Partitioning effectiveness
- Statistics accuracy and updates
- Parameter tuning opportunities

**Database Optimization Deliverables:**
1. **Query Analysis Report** (slow queries with optimization plans)
2. **Index Recommendations** (create/drop/modify strategies)
3. **Configuration Tuning** (database parameter optimization)
4. **Monitoring Setup** (query performance tracking)
5. **Maintenance Scripts** (automated optimization tasks)
6. **Emergency Procedures** (deadlock resolution, connection recovery)

Think harder about data consistency implications of any optimization changes.
```

## 🧠 Advanced Debugging Techniques

### Distributed System Debugging

```
As a distributed systems expert, debug [DISTRIBUTED_SYSTEM_ISSUE] across multiple services.

**Distributed System Context:**
- Architecture: [MICROSERVICES/SOA/SERVERLESS]
- Service Mesh: [ISTIO/LINKERD/NONE]
- Message Queues: [KAFKA/RABBITMQ/SQS]
- Observability Stack: [MONITORING_TOOLS]
- Service Communication: [REST/GRPC/GRAPHQL]

**Distributed Debugging Strategy:**

**1. Trace Correlation:**
- Request ID propagation across services
- Distributed tracing analysis (Jaeger, Zipkin)
- Log aggregation and correlation
- Performance waterfall analysis

**2. Ultrathinking System Analysis:**
- Service dependency mapping
- Circuit breaker patterns and failure modes
- Data consistency across services (eventual consistency)
- Network partition handling
- Service discovery and load balancing

**3. Forensic System Investigation:**
- Cascading failure analysis
- Timeout and retry behavior
- Message queue backlogs and processing delays
- Database transaction coordination
- Cache coherence across services

**Distributed Debugging Tools:**
```bash
# Service mesh debugging
istioctl proxy-config cluster [POD_NAME]
kubectl describe service [SERVICE_NAME]

# Distributed tracing
jaeger-query --query.base-path=/jaeger

# Load balancer analysis
curl -H "Host: [SERVICE_NAME]" [LOAD_BALANCER_IP]
```

**System-Wide Resolution:**
1. **Failure Mode Analysis** (what can go wrong where)
2. **Resilience Patterns** (circuit breakers, bulkheads, timeouts)
3. **Monitoring Strategy** (SLIs, SLOs, error budgets)
4. **Incident Response** (runbooks, escalation procedures)
5. **Architecture Improvements** (decoupling, redundancy)

Think harder about the ripple effects of fixes across the entire distributed system.
```

### Concurrency Debugging

```
As a concurrency expert, debug [CONCURRENCY_ISSUE] in [MULTI_THREADED_COMPONENT].

**Concurrency Issue Context:**
- Issue Type: [RACE_CONDITIONS/DEADLOCKS/LIVELOCKS/STARVATION]
- Threading Model: [THREAD_POOLS/ASYNC_AWAIT/ACTORS]
- Synchronization: [LOCKS/SEMAPHORES/ATOMIC_OPERATIONS]
- Shared Resources: [DATABASES/FILES/MEMORY/CACHES]

**Concurrency Forensics:**

**1. Thread Analysis:**
- Thread dump examination
- Lock contention analysis  
- Resource access patterns
- Timing-dependent behavior

**2. Ultrathinking Concurrency Investigation:**
- Critical section identification
- Atomic operation boundaries
- Memory ordering and consistency
- Lock hierarchy and ordering
- Resource cleanup in exception scenarios

**3. Advanced Concurrency Patterns:**
```
Forensic analysis of common concurrency bugs:
- Check-then-act race conditions
- Double-checked locking issues
- ABA problems in lock-free algorithms
- Producer-consumer imbalances
- Thread pool starvation
- Async/await context switching issues
```

**Concurrency Debugging Tools:**
```bash
# Thread analysis
jstack [PID]  # Java thread dumps
pstack [PID]  # Native thread stacks
gdb -p [PID] -ex "thread apply all bt" # GDB backtrace

# Lock analysis
jconsole # Java lock monitoring
perf record -g # Performance profiling with call graphs
```

**Concurrency Fix Strategy:**
1. **Synchronization Strategy** (proper locking mechanisms)
2. **Lock-Free Alternatives** (atomic operations, immutable data)  
3. **Testing Approach** (stress tests, race condition detection)
4. **Performance Impact** (contention vs correctness trade-offs)
5. **Monitoring** (thread pool metrics, lock wait times)

Think harder about deadlock prevention through resource ordering and timeout strategies.
```

---

## 📋 Debugging Checklist

### Pre-Debug Preparation
- [ ] Gather all error messages and stack traces
- [ ] Collect system logs from all relevant components
- [ ] Document exact reproduction steps
- [ ] Note recent changes (code, config, infrastructure)
- [ ] Check monitoring dashboards and alerts

### Investigation Process  
- [ ] Form multiple hypotheses about root causes
- [ ] Design experiments to test each hypothesis
- [ ] Isolate variables (disable features, use minimal test cases)
- [ ] Check for environmental differences
- [ ] Analyze timing and sequence dependencies

### Solution Validation
- [ ] Implement fix with minimal scope
- [ ] Test fix in isolation
- [ ] Validate fix doesn't introduce new issues  
- [ ] Document fix rationale and approach
- [ ] Plan rollback strategy if needed

### Prevention Measures
- [ ] Add monitoring to detect similar issues
- [ ] Update error handling and logging
- [ ] Create tests to prevent regression
- [ ] Document lessons learned
- [ ] Update team knowledge base

**Next Steps**: Explore [Refactoring Prompts](./refactoring.md) and [Architecture Prompts](./architecture.md) for system improvement strategies.