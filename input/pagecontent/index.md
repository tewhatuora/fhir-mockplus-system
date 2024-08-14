# Mock+ System

The Mock+ custom system operations are FHIR compliant interfaces to allow a client to seed or reset their tenants data, and provisioning the Kibana dashboard for their tenant.

Once on-boarded as a consumer, and issued with a Client ID, this client ID is your tenant. This is embedded in the access token and used by Mock+ to route requests to the correct tenant.

<div width="70%">
<!-- Generated from `input/images-source/mockplus-overview.plantuml` -->
{% include mockplus-overview.svg %}
</div>

## Reset

The reset operation allows for new tenants to be seeded, and subsequently re-seeded to provide a known state after testing.

**Required Scope** : system/*.crus

## Dashboard Self-provisioning

Kibana Dashboard for ad-hoc queries of the clients tenant. The underlying data in OpenSearch is also loaded and refreshed when the _Reset_ operation is triggered.

**Required Scope** : system/*.crus

## Postman Smoke Test Collection

[MockPlus-Smoke-Test.postman_collection](MockPlus-Smoke-Test.postman_collection)
