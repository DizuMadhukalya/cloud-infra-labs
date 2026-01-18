## Improving Composite SLA

## Strategy 1: Add Redundancy
Single path: 99.9%
Redundant paths: 1 - (0.001 × 0.001) = 99.9999%

## Strategy 2: Fallback Services
- Primary service fails → Secondary service takes over
- Increases complexity but improves availability

## Strategy 3: Use Higher-SLA Services
- Choose premium tiers for critical components
- Balance cost vs. availability requirements

## Design Considerations
1) Identify single points of failure
2) Calculate composite SLA before deployment
3) Add redundancy where business requirements demand it
4) Monitor actual uptime vs. SLA guarantees
5) Architect for failure (assume services will go down)

## SLA Credits
- 99.9% → 98%: 10% credit
- 98% → 95%: 25% credit
- < 95%: 100% credit
- Must file claim within specific timeframe
- Credits applied to future bills, not cash refunds
