## Azure Subscription Overview

1) What is a Subscription
- Logical container for Azure resources that serves as a billing and access boundary
- Every Azure resource must belong to exactly one subscription
- Links to a single Entra ID tenant for authentication and authorization
- Has spending limits, quotas, and resource limits
- Acts as a boundary for RBAC (Role-Based Access Control)
- Types: Free trial, Pay-as-you-go, Enterprise Agreement, CSP, Student, Dev/Test

## Subscription Boundaries
1) Billing Boundary
- Each subscription gets separate bill/invoice
- Costs tracked and reported per subscription
- Different payment methods per subscription

2) Access Control Boundary
- RBAC policies applied at subscription level
- Different teams can have separate subscriptions with isolated permissions
- Prevents accidental access across environments

## Common Subscription Patterns
1) By Environment
- Subscription-Dev, Subscription-Test, Subscription-Prod
- Isolates costs and access per environment

2) By Department
- Subscription-Finance, Subscription-HR, Subscription-Engineering
- Chargeback model for departmental billing

3) By Application/Workload
- Subscription-WebApp, Subscription-DataPlatform
- Clear cost attribution per application

## Management Groups
1) What are Management Groups
- Hierarchical containers that organize multiple subscriptions
- Apply governance policies, RBAC, and compliance across subscriptions
- Up to 6 levels of depth (excluding root and subscription level)
- Single root management group per organization

## Hierarchy Structure
Root Management Group (Tenant)
    │
    ├── Management Group: Production
    │       ├── Subscription: Prod-WebApps
    │       └── Subscription: Prod-Databases
    │
    ├── Management Group: Non-Production
    │       ├── Subscription: Dev
    │       └── Subscription: Test
    │
    └── Management Group: Compliance
            └── Subscription: HIPAA-Workloads


## Benefits:-
- Policy inheritance: Apply Azure Policy at management group → flows to all child subscriptions
- Centralized RBAC: Assign roles once at top level instead of per subscription
- Organizational structure: Mirror company hierarchy (business units, regions, environments)
- Compliance: Enforce standards across multiple subscriptions
- Cost views: Aggregate costs across management group scope
