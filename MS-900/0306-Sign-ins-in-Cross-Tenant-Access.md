# Sign-ins in Cross-Tenant Access

Cross-tenant access in Microsoft Entra ID enables secure collaboration between two separate organizations (tenants). When a user signs in across tenants, Microsoft Entra evaluates authentication and authorization policies in both the home tenant and the resource tenant.

## How Sign-in Works

1. User authenticates in their home tenant.
2. Home tenant validates credentials and enforces MFA.
3. Resource tenant applies Conditional Access policies.
4. Access is granted or denied.

This dual-policy enforcement ensures Zero Trust across organizations.

---

## Real-Life Use Case

A consulting firm accesses a client’s SharePoint environment.

- Consultant signs in via their own company credentials.
- Client tenant enforces additional MFA and device compliance.
- Access granted only to specific project folders.

---

## Example

If consultant’s device is non-compliant:
Client tenant blocks access even if home tenant authentication succeeded.
