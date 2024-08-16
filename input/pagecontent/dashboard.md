---
layout: default
title: Developer Dashboard
---

OpenSearch is an open-sourced tool used by Mock+ to provide API consumers with a view of their activity to support design and development activity.

Obtain Keycloak access_token (authenticate as tenant)

### Required Scope

Client ID scope required is `system/*.crus`

![alt text](image-20240719-013419.png "Retrieve Access Token")

Call Provision Dashboard

![alt text](image-20240719-013448.png "Provision Dashboard")

Login OpenSearch

![alt text](image-20240719-013515.png "Login OpenSearch")

Change Password

![alt text](image-20240719-013531.png "Change Password")

### Tenant

Confirm global tenant

![alt text](image-20240717-032453.png "global tenant")

Select Explore on my own

![alt text](image-20240717-032505.png "Explore on my own")

### Initialise Dashboard

Discovery Dashboard will not appear before any index-pattern are created

![alt text](image-20240719-014510.png "Explore on my own")

Open Management/Overview, select Dashboards management, and then Index patterns

![alt text](image-20240717-032530.png "Explore on my own")

Special case Index-patterns

Index-patterns are created with the $reset operation (there are multiple for each API e.g. Air, HPI, NHI,… and each operation will create its own index-patterns depending on the seed data).

There seems to be a bug - For the index patterns to take effect the first time in the Dashboard (to see the index-patterns, use the visualisation dashboard and prevent Errors) the OpenSearch UI needs to be refreshed.

This can be achieved via switching to the Private tenant and back to Global tenant (only necessary once).

Reset (and seed) data

![alt text](image-20240717-032542.png "Reset (and seed) data")

Refresh the OpenSearch Dashboard via switching tenants and back

![alt text](image-20240717-032556.png "switching tenants")

![alt text](image-20240717-032602.png "after switching tenants")

![alt text](image-20240717-032609.png "switch back")

Now the index-patterns are visible

![alt text](image-20240717-032632.png "index visible")

### Create and Reset

Click on Discover and select index-pattern `patient*`

![alt text](image-20240719-013950.png "patient index")

Create new Patient

![alt text](image-20240717-032701.png "Create new Patient")

Refresh Discovery (one new hit)

![alt text](image-20240719-013859.png "Refresh Discovery")

Filter new data with reference number from created source

![alt text](image-20240719-014053.png "Refresh Discovery")

Search data in dev tools

![alt text](image-20240719-014128.png "Search data in dev tools")

Get all patients

![alt text](image-20240719-014153.png "Get all patients")

Get newly created patient

![alt text](image-20240719-014225.png "Get newly created patient")

After another reset the newly created patient is not searchable in OpenSearch anymore:

![alt text](image-20240717-032841.png "after reset")

![alt text](image-20240719-014339.png "after reset")

![alt text](image-20240719-014306.png "after reset")

![alt text](image-20240719-014415.png "after reset")
