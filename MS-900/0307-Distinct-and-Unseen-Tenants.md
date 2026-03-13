# Distinct Tenants, Unseen Tenants, Users, and Devices

## Distinct Tenants
Two completely separate Entra ID environments.

## Unseen Tenants
Tenants not yet explicitly trusted but attempting collaboration.

## Users
External identities invited via B2B collaboration.

## Devices
Device compliance may be evaluated across tenants.

---

## Real-Life Scenario

Parent company collaborates with subsidiary:
- Both have separate tenants.
- Policies aligned via cross-tenant trust settings.

Unseen tenant attempting access:
Access denied unless explicitly configured.

---

## Example

If device compliance trust is enabled:
Parent tenant may trust subsidiary’s compliant devices.
