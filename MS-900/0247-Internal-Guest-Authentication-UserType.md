# How Internal Guest Authenticates Using UserType Property

Sometimes internal users are intentionally marked as Guests for restricted access.

UserType = Guest

## Why Mark Internal User as Guest?

- Limited access to sensitive resources
- Project-based temporary access
- Controlled collaboration

## Authentication Flow

1. User signs in with corporate credentials.
2. Entra ID identifies UserType as Guest.
3. Access is limited based on policies and group membership.
4. Conditional Access still applies.

## Example

An employee temporarily assigned to a different department is granted limited SharePoint access as Guest instead of full Member.
