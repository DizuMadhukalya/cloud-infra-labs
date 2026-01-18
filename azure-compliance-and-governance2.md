##  Azure Compliance and Governance 2
## Azure Blueprints

1. What are Blueprints
- Package for deploying and updating cloud environments in repeatable way
- Combines multiple ARM templates, policies, RBAC, and resource groups
- Version-controlled templates for consistent environment deployment
- Relationship between blueprint definition (design) and assignment (deployment) is preserved
- Note: Being replaced by Template Specs and Deployment Stacks, but still widely used

2. Components
 2.1 Artifacts (Building blocks)
  - Resource groups: Container for resources
  - ARM templates: Deploy actual resources (VMs, networks, storage)
  - Policy assignments: Governance controls
  - Role assignments: Access control

3. Blueprint Lifecycle
- Create blueprint definition (in draft state)
- Add artifacts (policies, roles, templates)
- Publish blueprint (versioned, e.g., v1.0)
- Assign blueprint to subscription(s)
- Update and republish (v1.1, v2.0) as needed

4. Use Cases
- Environment standardization: Deploy consistent dev/test/prod environments
- Compliance frameworks: PCI-DSS, HIPAA, ISO 27001 blueprints
- Landing zones: Set up new subscriptions with governance from day one
- Multi-subscription deployments: Apply same configuration across subscriptions

## Blueprint vs ARM Template vs Policy

 <img width="737" height="221" alt="image" src="https://github.com/user-attachments/assets/f04a3b1f-7fc9-4e49-ae59-7af277aeb218" />

## Example Blueprint Structure

 <img width="545" height="185" alt="image" src="https://github.com/user-attachments/assets/8024f30d-6a7d-4b2b-8913-b9549152e0ac" />

## Resource Locks

1. What are Resource Locks
- Prevent accidental deletion or modification of critical resources
- Override RBAC permissions (even Owners cannot bypass locks)
- Inherited from parent scope to child resources
- Two types: CanNotDelete and ReadOnly

2. Lock Types

2.1 CanNotDelete Lock
- Can read and modify resource
- Cannot delete resource
- Example: Production database, critical VNet

2.2 ReadOnly Lock
- Can only read resource
- Cannot modify or delete resource
- Example: Golden image VM, compliance template

3. Lock Behavior

3.1 What ReadOnly prevents:
- Start/stop VMs (considered modification)
- Add/remove NSG rules
- Scale operations
- Configuration changes

3.2 What ReadOnly allows:
- View resource properties
- Read data
- List keys (but can't regenerate)

## Lock Scope & Inheritance

  <img width="539" height="117" alt="image" src="https://github.com/user-attachments/assets/ad241605-39f8-4f72-b92c-5bd9fd6a2fc8" />

- Lock at subscription → Affects all resources below
- Must remove parent lock before removing child locks
- Cannot override parent lock with less restrictive child lock  

1. Use Cases
- Production databases: CanNotDelete to prevent accidental deletion
- Networking infrastructure: CanNotDelete on VNets, VPN Gateways
- Compliance resources: ReadOnly on audit log storage accounts
- Golden images: ReadOnly on base VM images
- Shared services: CanNotDelete on identity, monitoring resources

2. Managing Locks
 
 2.1 Who can create/delete locks:
  - Owner role
  - User Access Administrator role
  - Custom role with Microsoft.Authorization/locks/* permission

  2.2 Removing locks:
  - Must explicitly delete lock before deleting resource
  - Cannot delete resource until all locks removed (including inherited)

3. Best Practices
- Apply locks immediately after deploying critical resources
- Document why locks exist (use lock notes/tags)
- Limit who can manage locks (separate from resource contributors)
- Use CanNotDelete for most cases (ReadOnly can be too restrictive)
- Automate lock deployment via ARM templates or Blueprints
- Regular reviews to ensure locks still needed

## Governance Implementation Pattern

 <img width="624" height="349" alt="image" src="https://github.com/user-attachments/assets/c4ac88b5-2b20-4f85-aad7-fe599437cab2" />

1. Governance Best Practices
- Start with policies at management group level (broadest impact)
- Use RBAC groups instead of individual assignments
- Apply blueprints for consistent environment creation
- Lock critical infrastructure immediately after deployment
- Regular compliance reviews and remediation
- Combine all four tools for comprehensive governance
- Document governance decisions and exemptions 
