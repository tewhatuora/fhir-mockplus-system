---
layout: default
title: Postman Collection
---

Each application (client id/secret) has it's own tenant. All REST access to the client tenant is via the Digital Services Hub _Connector Plane_.

![alt text](mockplus-overview.svg "Generated from input/images-source/mockplus-overview.plantuml"){: width="100%" }

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

[Mockplus.postman_environment](Mockplus.postman_environment)

![alt text](postman-collection-run.png "Postman Collection Run")

### Newman Collection Run

To execute the run using newman, set your credentials as session variables.

    newman run MockPlus-Smoke-Test.postman_collection -e Mockplus.postman_environment --global-var "KC_CLIENT_ID=$KC_CLIENT_ID" --global-var "KC_CLIENT_SECRET=$KC_CLIENT_SECRET"

![alt text](newman-collection-run.png "newman Collection Run")
