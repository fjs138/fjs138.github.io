---
layout: post
title: Data-Packages
---

Data packages can be used to publish supporting data for a publication. Data packages are created before the publication in that case and get their own DOI. [ScholarSphere](https://scholarsphere.psu.edu/ "ScholarSphere"), a PSU library application, is used to store the data and provide a persistent URL. \
\
A publication can then be assigned later once it is available LiST.

#### Create Data Packages

Data packages have their own landing page in LiST, which can be accessed directly via the link https://m4-2dcc.vmhost.psu.edu/list/data, or from the project view:\
![image]\(/list-wiki//uploads/2201726cc4e2c1b297e930031f72b41e/image.png\)

In the data package view, data packages can be created by all 2DCC personnel. This is done via an entry in the Mail menu in the data package view.

![image]\(/list-wiki//uploads/b0acf0ef253e281ae236f156af137e44/image.png\)

Data packages need a title and a description, a DOI is assigned later.

![image]\(/list-wiki//uploads/9869e54036df343379f024562525c3a5/image.png\)

Like all data objects in LiST, data packages are initially created in Pending and have to be submitted before they can be published.\
Once submitted, data packages are ready to be published and cannot be modified or deleted any more. An Admin can reset submitted data packages to pending if necessary.

#### Assigning Samples

Samples are added via the context menu:

![image]\(/list-wiki//uploads/6a35ced3627b7ce78a4745fe401e36fa/image.png\)

This opens a sample selection, where samples can be filter by project, instrument, research group, etc. and any number of samples can be selected and added to the data package.

![image]\(/list-wiki//uploads/54db8a793ada9e64c45403c8a4855026/image.png\)

Samples are assigned together with their processing activities (Preparation, Synthesis, Post-Processing, Split) and characterization activities. Transfers to other projects, Shipping requests etc. are not included. Before publishing a data package, sample activities can be excluded from the data package.

#### Creating a snapshot

Once samples have been assigned a snapshot can be created. 
This creates a copy of all data contained in the data package at the time of snapshot creation.
Any later updates, like further characterization activities, updates to recipes will not be reflected in the snapshot.

![image]\(/list-wiki//uploads/36539fcb72b2ad622eec89366241ed44/image.png\)

When the snapshot is created, a folder is created on SharePoint where all files associated with samples and activities contained in the snapshot are copied. This folder is publicly accessible, and the files contained in this folder will be sent to ScholarSphere and published as a data set there in the future (whenever the ScholarSphere API is available).

Copying all files can take some time and is done in the background. 
![image]\(/list-wiki//uploads/27de18d5303c6992621c14802a1051d8/image.png\)

#### Publishing data packages

While a freshly created snapshot can still be modified by 2DCC personnel, eg. characterization activities be removed, publishing the snapshot turns it into a read only object in LiST and makes the data package publicly accessible. 

![image]\(/list-wiki//uploads/aebc9d9025b2d55452dc9ded319cd937/image.png\)

In the future, data will be sent to ScholarSphere, a data set will be created there, and a DOI will be reserved upon publication. The DOI will resolve to ScolarSphere, while the same data can also be accessed in LiST using the link \
https://m4-2dcc.vmhost.psu.edu/list/data/{doi}

It will also be found by the data package search.






