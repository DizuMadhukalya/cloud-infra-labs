# Security Service Edge (SSE) Architecture Diagrams

## Diagram 1 — Traditional VPN Model

┌──────┐      ┌─────┐      ┌──────────────────────┐
│ User │─────▶│ VPN │─────▶│ Entire Network Access│
└──────┘      └─────┘      └──────────────────────┘

Problem:
❌ Once connected, user can move laterally across the network
❌ No granular access control
❌ Implicit trust after authentication

---

## Diagram 2 — Zero Trust SSE Model (Based on Attached Diagram)

┌──────────────┐  ┌──────┐  ┌──────────────┐  ┌─────────────────┐
│ Microsoft 365│  │ SaaS │  │ HQ Datacenter│  │ 3rd Party Cloud │
└──────┬───────┘  └───┬──┘  └──────┬───────┘  └────────┬────────┘
       │              │             │                   │
       └──────────────┴─────────────┴───────────────────┘
                            │
                            ▼
              ┌─────────────────────────────┐
              │ MS Entra Internet Access    │
              │ MS Entra Private Access     │
              └─────────────┬───────────────┘
                            │
                            ▼
              ┌─────────────────────────────┐
              │   Global Secure Access      │
              └─────────────┬───────────────┘
                            │
         ┌──────────────────┼──────────────────┐
         │                  │                  │
         ▼                  ▼                  ▼
   ┌───────────┐    ┌───────────┐    ┌────────────────┐
   │Identities │    │ Endpoints │    │Remote Networks │
   └───────────┘    └───────────┘    └────────────────┘

Zero Trust Principles:
✓ Verify Explicitly
✓ Least Privilege Access
✓ Assume Breach

---

## Diagram 3 — Identity-Centric Flow

┌──────┐    ┌──────────────────┐    ┌─────────────────┐
│ User │───▶│Identity Verification│───▶│Device Compliance│
└──────┘    └──────────────────┘    └────────┬────────┘
                                              │
                                              ▼
            ┌──────────────────┐    ┌─────────────────┐
            │ App-Level Access │◀───│ Risk Evaluation │
            └──────────────────┘    └─────────────────┘

Key Principle:
✓ Access granted per application, NOT per network

---

## Real-Life Scenario: Remote Consultant Accessing Payroll

┌─────────────────┐
│Remote Consultant│
└────────┬────────┘
         │
         ▼
┌────────────────────┐
│ 1. Identity Verified│  ✓ Multi-factor authentication
└────────┬───────────┘
         │
         ▼
┌────────────────────┐
│ 2. Device Checked  │  ✓ Compliant, managed, no malware
└────────┬───────────┘
         │
         ▼
┌────────────────────┐
│ 3. Risk Evaluated  │  ✓ Location, behavior, threat signals
└────────┬───────────┘
         │
         ▼
┌────────────────────┐
│ 4. Access Granted  │  ✓ Payroll App ONLY
└────────────────────┘  ✗ No lateral movement
                        ✗ No other systems accessible

Result: Consultant accesses ONLY the payroll application
        No access to HR, Finance, or other internal systems

