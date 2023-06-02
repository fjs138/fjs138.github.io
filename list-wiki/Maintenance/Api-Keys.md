---
layout: post
title: Api-Keys
---

#### LiST allows access using a REST API.

The Open API definition can be found at https://m4-2dcc.vmhost.psu.edu/list/swagger/index.html

There are two api versions:

- v1 is used by the JavaScript client.\
  Communication is often done via database ids here since the JavaScript client loads certain data initially, like materials, substrates, or staff, and only needs the ids. Most calls are available via REST API (provided the API Key has sufficient privileges), except for certain changes that require Admin privileges. Setting up new API Keys for example.
- v2 is intended to be used for machine learning, or by users. Requests are done via user known IDs (S0010, MBE1-220101A...), and responses contain additional data like material details, substrate details, etc.\
  Some administrative endpoints are not available in the v2 REST API, like setting up projects, assigning users, etc.

#### Setting up API Keys

API Keys can be set up via the Customizing user interface

![image]\(/list-wiki//uploads/c7e339c9c567f21b0ceb76de2d31a4a3/image.png\)

API Keys usually have limited validity (the validity can always be extended), and the key itself is only shown upon creation. LiST does not store the key (it is hashed), so it cannot be accessed afterwards.

![image]\(/list-wiki//uploads/4056ba88c79a37ee979d144a5d2d66ab/image.png\)The checkbox "Allow internal API" gives an API Key access to the v1 API, otherwise it is restricted to v2.

If an API key is to be restricted to certain projects, it is best set up with the Role "Community", that is public data only. If one of the more permissive roles is used, the API key already has access to everything that role allows, and all projects that role gives access to.

Then the projects that shall be accessible are added, and a suitable Project role assigned. For external access, that would usually be the same roles that are used for external users, but in-house roles can be used, too.

* Project - Viewer\
  This role gives a user read-only access. For instance, for Data-Only projects.
* Project - User Group\
  This role gives the same privileges as the PI. Used for other collaborators like co-PIs, or students in the PI's group.
* Project - External Researcher \
  This role grants the same privileges that 2DCC staff have, but for this project only. Used for on-site users who grow their own samples, run characterizations and add that data to LiST (eg. RSVP).





