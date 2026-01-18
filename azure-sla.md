## Azure Service Level Agreement

1)What is SLA
- Service Level Agreement - Microsoft's commitment to service availability and performance
- Defines guaranteed uptime percentage for Azure services
- If Microsoft fails to meet SLA, customers receive service credits (partial refund)
- Different services have different SLA guarantees
- SLA only applies when services are configured correctly (e.g., multiple instances, availability zones)

2) <img width="816" height="394" alt="image" src="https://github.com/user-attachments/assets/f07d7ca5-2595-4655-a294-47ed5c8b2d05" />

Difference - 
- 0.9% difference (99.9% → 99.99%) = 43 minutes vs 4 minutes downtime/month
- Higher SLA = Higher cost (more redundancy required)
- Critical systems: Need 99.99% or higher
- Non-critical systems: 99.9% often sufficient

Achieving Higher SLAs
- 99.9%: Single VM with premium storage
- 99.95%: Two VMs in same availability set
- 99.99%: VMs across availability zones
- Zone-redundant services: Automatically replicate across zones

## Composite SLA
3) What is Composite SLA ?
- Combined SLA when application depends on multiple services
- Calculated by multiplying individual SLAs together
- Overall availability ≤ lowest component SLA

## Calculation Examples
## Example 1: Web App + SQL Database

Web App SLA: 99.95%
SQL Database SLA: 99.99%

Composite SLA = 0.9995 × 0.9999 = 0.9994 = 99.94%

## Example 2: Three-Tier Application

App Gateway: 99.95%
Web App: 99.95%
SQL Database: 99.99%

Composite SLA = 0.9995 × 0.9995 × 0.9999 = 0.9989 = 99.89%

## Key Insights
- More dependencies = Lower composite SLA
- Each additional service multiplies the failure probability
- 3 services at 99.9% each → 99.7% composite SLA
