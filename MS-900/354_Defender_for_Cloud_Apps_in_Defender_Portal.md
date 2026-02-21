# Microsoft Defender for Cloud Apps in the Microsoft Defender Portal

Microsoft Defender for Cloud Apps is a Cloud Access Security Broker (CASB) integrated into the Microsoft Defender Portal. It provides visibility, control, threat protection, and compliance enforcement across cloud applications.

It helps organizations discover shadow IT, monitor activities, enforce policies, and protect sensitive data across SaaS applications such as Microsoft 365, Google Workspace, Dropbox, AWS, and Salesforce.

---

## Cloud Discovery

Cloud Discovery identifies all cloud applications used within the organization by analyzing network traffic logs from firewalls, proxies, or Microsoft Defender for Endpoint.

It provides:

- List of cloud apps being accessed
- Risk score of each app
- Usage statistics (users, traffic volume, IP addresses)
- Compliance certifications (ISO, SOC2, GDPR)

Real-life use case:

An employee installs and uses an unauthorized file-sharing service like WeTransfer to upload company documents. Defender for Cloud Apps detects this activity and flags the app as shadow IT, allowing administrators to block it.

---

## Cloud App Catalog

The Cloud App Catalog contains over 31,000 cloud apps with detailed risk assessments.

Each app includes:

- Risk score
- Compliance certifications
- Security controls
- Encryption standards

Example:

If users start using an unknown CRM system, the administrator can check its risk score and compliance status before allowing or blocking access.

---

## Activity Log

The Activity Log records all user actions across connected cloud apps.

Examples of activities:

- File uploads and downloads
- Login attempts
- Sharing files externally
- Permission changes

Real-life example:

An employee downloads 500 confidential files at midnight. Defender logs this activity and triggers a security alert.

---

## Governance Log

The Governance Log records actions taken automatically or manually by policies.

Examples:

- Blocking user access
- Removing sharing permissions
- Suspending compromised accounts

Example:

If a policy detects sensitive file sharing, Defender automatically removes external sharing and logs the governance action.

---

## Policies

Policies allow organizations to detect risky behavior and enforce controls.

Types include:

- Activity policies
- File policies
- Session policies
- Anomaly detection policies

Example:

A policy can alert admins when sensitive files are shared externally.

---

Conclusion:

Defender for Cloud Apps provides full visibility and control over cloud usage, helping organizations detect threats, prevent data leaks, and enforce security policies.
