---
layout: post
title: Maintenance-Tasks
---

### Regular checks in web UI

Using LiST user interface to check ongoing data integration.

* [Automatic Sample Submit](/Maintenance/Regular-Checks#automatic-sample-submit)\
  LiST validates and submits valid samples automatically. Research groups might need a reminder if there are samples that are invalid.
* [Automatic Sample Import](/Maintenance/Regular-Checks#automatic-sample-import)\
  LiST is creating samples automatically for a couple of synthesis instruments. In order to do that, certain meta data is needed, and sometimes those are incomplete, and the sample cannot not be created. Those cases have to be checked and researchers need to be reminded to correct it on their end.
* [Characterization Data Upload](/Maintenance/Regular-Checks#characterization-data-upload)\
  LiST gets characterization data automatically from SharePoint document libraries. There are regularly characterization data for samples not yet available in LiST. In that case the research groups might need a reminder to add the samples, too.
* [Bulk Samples](/Maintenance/Regular-Checks#checking-bulk-samples)\
  Samples and sample preparation require manual tasks, and the research group is a bit slow in updating LiST sometimes.

#### Instrument managers
- MOCVD Lab & Raman 3 (WiTEC)
  - Chen Chen (cuc33@psu.edu)
- MBE Lab Davey (MBE1, MBE5, MBE6)  
  - Anthony Richardella (arr19@psu.edu)
- MBE Lab MSC (MBE2, MBE4)
  - Maria Hilse (mxh752@psu.edu)
- Bulk Labs
  - Seng Huat Lee (shl12@psu.edu)
- Epitaxial Graphene
  - Chengye Dong (cqd5506@psu.edu)

### Server checks

- [Update OS](/Maintenance/Server-Checks#update-os)
- [Check file system](/Maintenance/Server-Checks#check-file-system)
- [Check / restart dotnet applications](/Maintenance/Server-Checks#check-or-restart-dotnet-application) \
  When outage is reported, or after a connection problem to the database

### User requests

Common requests from internal and external users.

Some of these tasks require Admin privileges, and since users are initially signed in with their user role, they have to [switch into the Admin role](user-guide/Admin-role-and-Sign-in-as) to perform these tasks.

- Setting up projects
  * [Set up in-house projects](/Maintenance/Setting-up-projects#create-in-house-projects)
  * [Add researchers (staff) to projects](/Maintenance/Setting-up-projects#add-researchers-to-projects)
  * [Add (on-site/off-site) collaborators to external projects](/Maintenance/Setting-up-projects#add-users-to-external-user-project)\
  * [Set up RSVP projects](/Maintenance/Setting-up-projects#rsvp-projects)
  * [Set up data-only projects](/Maintenance/Setting-up-projects#data-only)
- Adding / Removing users
  * [Add researchers to research group](/Maintenance/Setting-up-projects#add-researchers-to-user-group)
- Resetting and fixing sample 
  * [Reset submitted samples or activities](/Maintenance/user-requests#reset-pending-samples-or-activities)
  * [Correct sample IDs](/Maintenance/User-Requests#correct-sample-id)
- [Check user id for Shibboleth](/Maintenance/user-requests#check-external-user-id-eppn-received-from-their-institutions-identity-provider)
- [Add characterization instruments](Maintenance/user-requests#add-characterization-instruments)
- [Create or update API Keys](/Maintenance/api-keys)





