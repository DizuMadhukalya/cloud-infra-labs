## Azure Compliance and Governance 1
## Azure Policy

1) What is Azure Policy
- Service to create, assign, and manage policies that enforce rules and effects over resources
- Ensures resources stay compliant with corporate standards and SLAs
- Evaluates resources for non-compliance with assigned policies
- Can prevent non-compliant resources from being created (deny effect)
- Built-in policies available, plus custom policy creation

## Key Concepts

1) Policy Definition
- The rule itself (JSON format)
- Example: "Allowed VM SKUs", "Require tag on resources", "Allowed locations"

2. Policy Assignment
- Applying a policy to a scope (management group, subscription, resource group)
- Can exclude specific scopes from assignment

3. Initiative (Policy Set)
- Group of related policy definitions
- Example: "PCI-DSS compliance" initiative contains 20+ individual policies
- Assign entire initiative instead of individual policies

4. Policy Effects
- Deny: Prevent resource creation/modification
- Audit: Log non-compliant resources (doesn't block)
- Append: Add required properties (e.g., add tags)
- Modify: Add, update, or remove resource properties
- DeployIfNotExists: Deploy resources if condition not met (e.g., deploy diagnostic settings)
- AuditIfNotExists: Audit if related resource doesn't exist

5. Common Use Cases
- Enforce naming conventions: *-prod-* for production resources
- Restrict resource locations: Only allow East US and West US
- Require specific tags: Cost center, owner, environment
- Enforce encryption: All storage accounts must use encryption
- Limit VM sizes: Deny expensive GPU instances in dev/test
- Require backup: All VMs must have backup configured

6. Compliance Dashboard
- View overall compliance percentage
- Drill down to see non-compliant resources
- Remediate non-compliant resources (for policies with modify effect)
- Export compliance reports

## Role-Based Access Control (RBAC)

1. What is RBAC
- Authorization system for managing access to Azure resources
- Fine-grained access management using roles
- Follows principle of least privilege
- Based on allow model (no explicit deny except with deny assignments)

2. RBAC Components
 2.1 Security Principal (Who)
  - User, group, service principal, managed identity

 2.2 Role Definition (What can they do)
  - Collection of permissions
  - Built-in or custom roles

 2.3 Scope (Where)
  - Management group, subscription, resource group, or resource level

 2.4 Role Assignment (Connecting who + what + where)
  - Security principal + Role + Scope = Access

## Common Built-in Roles

1. General Roles
- Owner: Full access + can delegate access to others
- Contributor: Full access but cannot grant access to others
- Reader: View resources only, no modifications

2. Specific Service Roles
- Virtual Machine Contributor: Manage VMs but not network/storage
- Network Contributor: Manage networks but not resources in them
- Storage Blob Data Contributor: Read/write/delete blob data
- SQL DB Contributor: Manage SQL databases but not SQL servers
- User Access Administrator: Manage user access only (no resource access)

 ## Scope Hierarchy & Inheritance

 <img width="492" height="116" alt="image" src="https://github.com/user-attachments/assets/695c9108-c40e-4fad-ae6c-cc5016052732" />

- Permissions assigned at higher level automatically flow down
- More restrictive permissions at lower levels don't override (additive model)

1. Custom Roles
- Create when built-in roles don't meet needs
- Define specific actions and data actions
- JSON format with permissions
- Example: "Restart VMs only" role without delete/create permissions

2. Best Practices
- Assign roles to groups, not individual users
- Use least privilege principle
- Assign at appropriate scope (not everything at subscription level)
- Use managed identities for service-to-service authentication
- Regular access reviews to remove unnecessary permissions
- Separate duties: Development vs Production access
