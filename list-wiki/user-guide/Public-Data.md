---
layout: post
title: Public-Data
---

Access to data in LiST is configured analogous to a file system. Users need access rights to both the folders and the files themselves.\
In order to access sample data, users need to have access to both the project (or data package) that contains the sample data, as well as to the sample and the specific activity.

* Project / Data Package
  * Sample
    * Preparation
    * Synthesis
    * Characterization

#### Submitted and Pending data

All data objects in LiST, projects, samples, data packages, and activities, are initially created in pending state. While pending, data can still be deleted and is never visible to the public. Submitted data cannot be deleted and cannot be modified either.

#### Projects

Access to projects is configured by the "Published" flag and the collaborators added to the project. All collaborators can access the projects, whereas community users can only access projects that have the "published" flag set.

#### ![image]\(/list-wiki//uploads/39baf3cad9f50678b65ab282495fbee8/image.png\)Data Packages

Access to Data Packages is configured only by the "Published" flag. If a data package is assigned to a publication, it is always publicly available (as always, provided that both the publication and the data package have been submitted).

#### Samples

Samples on user projects or data packages are always accessible to anyone having access to that project or data package.

Samples on In-House projects have an additional flag that allows distinguishing Process Development and Research. Only research samples are publicly available on In-House projects. If they are linked to data package, that reporting category flag is not checked and all samples are public.

#### Sample Activities

All sample activities (and uploaded files) have a visibility flag.

![image]\(/list-wiki//uploads/e6903957b8e62344fc5174a5f7b98117/image.png\)The following three options are available.

* On Publication\
  Activities with that flag are accessible if the Project/Data Package and Sample are accessible.
* User\
  Only 2DCC personnel and the User of that project (PI, and possibly additional collaborators of that user group) can see those sample activities.
* Internal 2DCC\
  Access is limited to 2DCC personnel.

On In-House projects, User and Internal 2DCC have the same effect and limit access to 2DCC personnel.

#### 2DCC Personnel

All data is always visible to all 2DCC personnel. Only write access is limited to collaborators on a project.





