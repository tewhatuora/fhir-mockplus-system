---
layout: default
title: Create and Reset
---

The following example steps through making changes to the dataset, and the reversing these using the `/$reset` system operation.

> Reset will only affect the clients tenant.

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
