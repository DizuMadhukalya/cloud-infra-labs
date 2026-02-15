# Conditional Access Policy and Its Core Components

Conditional Access (CA) in Microsoft Entra ID is a policy-based access control engine that evaluates signals and enforces access decisions before granting access to cloud resources.

It operates on a simple principle:

If specific conditions are met → Then enforce specific access controls.

## Core Components of a Conditional Access Policy

1. Assignments
2. Target Resources
3. Conditions
4. Access Controls

These components work together to enforce Zero Trust principles.

---

## Real-Life Scenario

A financial organization wants to:
- Allow employees access to SharePoint
- But require MFA when accessing from outside corporate network
- Block access from high-risk countries

Conditional Access evaluates:
- Who the user is
- Where they are connecting from
- What device they are using
- What resource they are trying to access

Then applies the appropriate control.

---

## Example

User tries to access Microsoft 365 from a personal device in another country.

Policy:
- Assignment: All users
- Condition: Untrusted location
- Access Control: Require MFA + compliant device

Access granted only if requirements are met.
