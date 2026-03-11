# Assignment Component in Conditional Access Policy

Assignments define who and what the policy applies to.

## Users and Groups
- All users
- Specific groups
- Directory roles
- Guest users

## Workload Identities
Policies can also apply to service principals.

## Network
Policies can include trusted or untrusted IP ranges.

---

## Real-Life Use Case

An organization:
- Applies stricter rules to administrators
- Applies lighter rules to frontline workers

Example:
Global Administrators must always use:
- MFA
- Compliant device
- Phishing-resistant authentication

Regular employees:
- MFA only when outside corporate network
