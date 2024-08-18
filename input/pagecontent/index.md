---
layout: default
title: Mock+ System
---

Mock+ is a mult-tenant solution that provides a developer specific sandbox environment. The Developer can perform systm-to-system authentication, in the persona of a _Sector Application_, e.g. a Patient Management System (PMS).

![alt text](MockPlus.png "Mock+ Developer Sandbox"){: width="70%" }

### System Operations

The following system operations are unique to Mock+ and cannot be used in downstream non-production (or production) environments.

The Mock+ custom system operations are FHIR compliant interfaces to allow a client to seed or reset their tenants data, and provision the Kibana dashboard for their tenant.

> The Kibana dashboard is a unique user interface feature of Mock+, and is also not available in other environments.

To be onboarded with a Mock+, follow the onboarding process at [https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub](https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub).

Once on-boarded as a consumer, and issued with a Client ID, this client ID is your tenant. This is embedded in your access token and used by Mock+ to route requests to the correct tenant.

The following system operations are limited to your tenant.

#### Reset

The reset operation allows for new tenants to be seeded, and subsequently re-seeded to provide a known state after testing.

**Required Scope** : system/*.crus

See [Postman Collection](collection.html) for user guidance.

#### Dashboard Self-provisioning

Kibana Dashboard for ad-hoc queries of the clients tenant. The underlying data in OpenSearch is also loaded and refreshed when the _Reset_ operation is triggered.

**Required Scope** : system/*.crus

See [Developer Dashboard](dashboard.html) for user guidance.
