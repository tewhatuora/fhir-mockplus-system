---
layout: default
title: Postman Collection
---

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
