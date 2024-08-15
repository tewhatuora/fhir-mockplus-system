# Mock+ System

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

## Dashboard Self-provisioning

Kibana Dashboard for ad-hoc queries of the clients tenant. The underlying data in OpenSearch is also loaded and refreshed when the _Reset_ operation is triggered.

**Required Scope** : system/*.crus

## Postman Smoke Test Collection

Run this collection to

- reset the tenant
- create the developer dashboard
- probe public metadata
- authenticate and retrieve data from each API

[MockPlus-Smoke-Test.postman_collection](MockPlus-Smoke-Test.postman_collection)

### Postman Configuration

This environment contains non-sensitive variables only. Set the following global variables with your application credentials

- KC_CLIENT_ID
- KC_CLIENT_SECRET

[MockPlus-Smoke-Test.postman_collection](MockPlus-Smoke-Test.postman_collection)

![alt text](postman-collection-run.png "Postman Collection Run")

### Newman Collection Run

To execute the run using newman, set your credentials as session variables.

    newman run MockPlus-Smoke-Test.postman_collection -e Mockplus.postman_environment --global-var "KC_CLIENT_ID=$KC_CLIENT_ID" --global-var "KC_CLIENT_SECRET=$KC_CLIENT_SECRET"

![alt text](newman-collection-run.png "newman Collection Run")
