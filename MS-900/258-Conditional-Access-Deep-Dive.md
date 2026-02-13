# Conditional Access Deep Dive

Conditional Access is a policy engine in Microsoft Entra ID that evaluates signals before granting access to resources.

## Signals Evaluated
- User identity
- Device compliance state
- Location (trusted vs untrusted)
- Application accessed
- Risk level

## Access Controls
- Require MFA
- Require compliant device
- Block access
- Require passwordless authentication

## Real World Scenario

An employee attempts to access SharePoint from an unknown country using an unmanaged device. The Conditional Access policy:
- Detects risky location
- Requires MFA
- Requires compliant device
- Blocks access if compliance fails

Conditional Access enforces Zero Trust principles by continuously verifying identity and context.
