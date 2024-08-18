---
layout: default
title: Developer Dashboard
---

OpenSearch is an open-sourced tool used by Mock+ to provide API consumers with a view of their activity to support design and development activity.

Obtain Keycloak access_token (authenticate as tenant)

### Required Scope

Client ID scope required is `system/*.crus`

<img src="image-20240719-013419.png" width="100%">

Call Provision Dashboard

<img src="image-20240719-013448.png" width="100%">

Login OpenSearch

<img src="image-20240719-013515.png" width="100%">

Change Password

<img src="image-20240719-013531.png" width="100%">

### Tenant

Confirm global tenant

<img src="image-20240717-032453.png" width="100%">

Select Explore on my own

<img src="image-20240717-032505.png" width="100%">

### Initialise Dashboard

Discovery Dashboard will not appear before any index-pattern are created

<img src="image-20240719-014510.png" width="100%">

Open Management/Overview, select Dashboards management, and then Index patterns

<img src="image-20240717-032530.png" width="100%">

Special case Index-patterns

Index-patterns are created with the $reset operation (there are multiple for each API e.g. Air, HPI, NHI,… and each operation will create its own index-patterns depending on the seed data).

There seems to be a bug - For the index patterns to take effect the first time in the Dashboard (to see the index-patterns, use the visualisation dashboard and prevent Errors) the OpenSearch UI needs to be refreshed.

This can be achieved via switching to the Private tenant and back to Global tenant (only necessary once).

Reset (and seed) data

<img src="image-20240717-032542.png" width="100%">

Refresh the OpenSearch Dashboard via switching tenants and back

<img src="image-20240717-032556.png" width="100%">

<img src="image-20240717-032602.png" width="100%">

<img src="image-20240717-032609.png" width="100%">

Now the index-patterns are visible

<img src="image-20240717-032632.png" width="100%">
