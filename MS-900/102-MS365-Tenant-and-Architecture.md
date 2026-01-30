# Microsoft 365 Tenant and Architecture

A Microsoft 365 tenant is a dedicated, isolated instance of Microsoft 365 services for an organization. It acts as the foundation upon which all users, devices, policies, apps, and data reside.

## Key Components of a Tenant
- Azure Active Directory (Microsoft Entra ID)
- Users and Groups
- Licenses
- Domains
- Security and Compliance policies
- Subscriptions and services (Exchange, Teams, SharePoint, OneDrive)

## Architecture Overview
When an organization subscribes to Microsoft 365:
1. A tenant is created in Microsoft’s cloud.
2. A default domain like company.onmicrosoft.com is assigned.
3. Admins add custom domains.
4. Users, devices, and apps are managed inside this tenant.

## Use Case
A startup creates a tenant, adds employees, assigns licenses, and begins collaboration instantly without any on-prem infrastructure.

## Example
All Teams chats, SharePoint sites, OneDrive files, and Outlook mailboxes exist inside the same tenant boundary.
