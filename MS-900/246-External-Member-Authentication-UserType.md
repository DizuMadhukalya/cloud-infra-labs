# How External Member Authenticates Using UserType Property

In Microsoft Entra ID, the UserType property determines how a user is categorized within a tenant. While most external users are added as Guests, some organizations create external users as Members when deeper integration is required.

## What is an External Member?

An external member is a user account created in the tenant but belonging to someone outside the organization. Unlike Guests, they may be granted broader access similar to internal employees.

UserType = Member

## Authentication Process

1. Account is created in Entra ID.
2. User is assigned Member type.
3. User authenticates using credentials stored in the tenant (if cloud-created) or via federated identity.
4. Conditional Access and MFA policies apply just like internal users.

## Use Case

A subsidiary company employee is added as Member in parent company tenant for full collaboration access.

## Example

A consultant working long-term with the company is added as Member instead of Guest and receives full SharePoint and Teams access.
