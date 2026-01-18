## Identity and Access Management (IAM) flow

┌──────────────────────────────────────────────────────────────────┐
│                    Azure IAM Flow                                 │
└──────────────────────────────────────────────────────────────────┘

    ┌─────────┐
    │  USER   │ (Alice - Cloud Engineer)
    └────┬────┘
         │
         │ 1. Authenticates
         ▼
    ┌─────────────┐
    │  ENTRA ID   │ (Identity Provider)
    │             │
    │  • Verifies identity (MFA)
    │  • Checks group membership
    │  • Issues access token
    └──────┬──────┘
           │
           │ 2. Token contains role assignments
           ▼
    ┌─────────────┐
    │    ROLE     │ (RBAC - Role-Based Access Control)
    │             │
    │  Virtual Machine Contributor
    │  • Can create/delete VMs
    │  • Can start/stop VMs
    │  • Cannot manage networking
    └──────┬──────┘
           │
           │ 3. Role permissions applied
           ▼
    ┌─────────────┐
    │  RESOURCE   │ (Azure Resource)
    │             │
    │  • Virtual Machines  ✓ (allowed)
    │  • Storage Account   ✗ (denied)
    │  • Virtual Network   ✗ (denied)
    └─────────────┘

    ## Step-by-Step flow

Step 1: Authentication
- User (Alice) logs in with credentials + MFA
- Entra ID verifies identity

Step 2: Authorization Check
- Entra ID checks: What roles does Alice have?
- Role assignment: "Virtual Machine Contributor" on Resource Group "RG-Production"

Step 3: Access Decision
- Alice tries to create a VM → ✓ Allowed (role permits)
- Alice tries to delete storage account → ✗ Denied (role doesn't permit)

  ## Key Concepts (Scope Hierarchy - where roles can be assigned)

   Management Group
    └── Subscription
            └── Resource Group
                    └── Individual Resource

Inheritance: Roles assigned at higher levels flow down
 - Role at Subscription → Applies to all Resource Groups and Resources
 - Role at Resource Group → Applies to all Resources within

Least Privilege: Assign minimum permissions needed at the narrowest scope.
