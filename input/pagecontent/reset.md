---
layout: default
title: Create and Reset
---

The following example steps through making changes to the dataset, and the reversing these using the `/$reset` system operation.

> Reset will only affect the clients tenant.

Click on Discover and select index-pattern `patient*`

![alt text](image-20240719-013950.png "patient index"){: width="100%" }

Create new Patient

![alt text](image-20240717-032701.png "Create new Patient"){: width="100%" }

Refresh Discovery (one new hit)

![alt text](image-20240719-013859.png "Refresh Discovery"){: width="100%" }

Filter new data with reference number from created source

![alt text](image-20240719-014053.png "Refresh Discovery"){: width="100%" }

Search data in dev tools

![alt text](image-20240719-014128.png "Search data in dev tools"){: width="100%" }

Get all patients

![alt text](image-20240719-014153.png "Get all patients"){: width="100%" }

Get newly created patient

![alt text](image-20240719-014225.png "Get newly created patient"){: width="100%" }

After another reset the newly created patient is not searchable in OpenSearch anymore:

![alt text](image-20240717-032841.png "after reset"){: width="100%" }

![alt text](image-20240719-014339.png "after reset"){: width="100%" }

![alt text](image-20240719-014306.png "after reset"){: width="100%" }

![alt text](image-20240719-014415.png "after reset"){: width="100%" }
