---
layout: default
title: Developer Dashboard
---

OpenSearch is an open-sourced tool used by Mock+ to provide API consumers with a view of their activity to support design and development activity.

Obtain Keycloak access_token (authenticate as tenant)

### Required Scope

Client ID scope required is `system/*.crus`

![alt text](image-20240719-013419.png "Retrieve Access Token"){: width="250" }

Call Provision Dashboard

![alt text](image-20240719-013448.png "Provision Dashboard"){: width="250" }

Login OpenSearch

![alt text](image-20240719-013515.png "Login OpenSearch"){: width="250" }

Change Password

![alt text](image-20240719-013531.png "Change Password"){: width="250" }

### Tenant

Confirm global tenant

![alt text](image-20240717-032453.png "global tenant"){: width="250" }

Select Explore on my own

![alt text](image-20240717-032505.png "Explore on my own"){: width="250" }

### Initialise Dashboard

Discovery Dashboard will not appear before any index-pattern are created

![alt text](image-20240719-014510.png "Explore on my own"){: width="250" }

Open Management/Overview, select Dashboards management, and then Index patterns

![alt text](image-20240717-032530.png "Explore on my own"){: width="250" }

Special case Index-patterns

Index-patterns are created with the $reset operation (there are multiple for each API e.g. Air, HPI, NHI,… and each operation will create its own index-patterns depending on the seed data).

There seems to be a bug - For the index patterns to take effect the first time in the Dashboard (to see the index-patterns, use the visualisation dashboard and prevent Errors) the OpenSearch UI needs to be refreshed.

This can be achieved via switching to the Private tenant and back to Global tenant (only necessary once).

Reset (and seed) data

![alt text](image-20240717-032542.png "Reset (and seed) data"){: width="250" }

Refresh the OpenSearch Dashboard via switching tenants and back

![alt text](image-20240717-032556.png "switching tenants"){: width="250" }

![alt text](image-20240717-032602.png "after switching tenants"){: width="250" }

![alt text](image-20240717-032609.png "switch back"){: width="250" }

Now the index-patterns are visible

![alt text](image-20240717-032632.png "index visible"){: width="250" }
