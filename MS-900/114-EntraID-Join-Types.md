# Entra ID Join Types

Device identity is as important as user identity in Microsoft 365. Microsoft Entra ID supports three ways to bring devices under management.

## Types of Device Identity

### Entra ID Joined
Devices are joined directly to Entra ID and managed through Intune. Common for cloud-only organizations.

### Hybrid Entra ID Joined
Devices are joined to on-prem Active Directory and synced to Entra ID. Common in traditional enterprises migrating to cloud.

### Entra ID Registered
Personal/BYOD devices registered for access to corporate resources without full control.

## Use Case
A company allows employees to access Outlook on personal phones (Registered), while company laptops are Entra Joined.

## Example
A bank uses Hybrid Join for desktops but Entra Join for new laptops.
