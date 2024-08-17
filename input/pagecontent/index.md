---
layout: default
title: Mock+ System
---

The Mock+ custom system operations are FHIR compliant interfaces to allow a client to seed or reset their tenants data, and provision the Kibana dashboard for their tenant.

> The Kibana dashboard is a unique feature of Mock+ and not available in other non-production environments.

<div width="70%">
<!-- Generated from `input/images-source/mockplus-overview.plantuml` -->
{% include mockplus-overview.svg %}
</div>

To be onboarded with a Mock+, follow the onboarding process at [https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub](https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub).

Once on-boarded as a consumer, and issued with a Client ID, this client ID is your tenant. This is embedded in your access token and used by Mock+ to route requests to the correct tenant.

The following system operations are limited to your tenant.

## Reset

The reset operation allows for new tenants to be seeded, and subsequently re-seeded to provide a known state after testing.

**Required Scope** : system/*.crus

See Postman Collection menu item for user guidance.

## Dashboard Self-provisioning

Kibana Dashboard for ad-hoc queries of the clients tenant. The underlying data in OpenSearch is also loaded and refreshed when the _Reset_ operation is triggered.

**Required Scope** : system/*.crus

See Developer Dashboard menu item for user guidance.
