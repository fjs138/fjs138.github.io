---
layout: post
title: SharePointSites
---

# SharePoint Sites used by LiST

LiST stores files on SharePoint, where 2DCC researchers have only read-only access. LiST keeps the folder and file IDs in its database and would not currently discover new files.

We started using Private Channels inside the 2DCC Team so that access can be restricted even for 2DCC Team owners and members. It turned out that sharing folders via anonymous links does not work on a Teams SharePoint site (at least not in a private channel).

When data is shared with external users, the collection of files and folders to share is not usually a single folder. Depending on the user privileges, only certain files might be accessible, for instance. Therefore, LiST makes a copy with only the accessible data and shares that folder. The SharePoint site [2DCC-Data](https://pennstateoffice365.sharepoint.com/sites/2DCC-Data) is used for sharing.

(It is planned to move the actual data there, too, and get rid of those private channel storage. Development server already uses the new site).

## Development Environment

### [File Storage](https://pennstateoffice365.sharepoint.com/sites/2DCC-Data/Testing)

SharePoint Site: 2DCC-Data\
Document Library: Testing\
Root Folder: /

### [Temporary Sharing Folder](https://pennstateoffice365.sharepoint.com/sites/2DCC-Data/Testing/Shared%20Data)

SharePoint Site: 2DCC-Data\
Document Library: Testing\
Root Folder: /Shared Data/

## Staging Environment

### [File Storage](https://pennstateoffice365.sharepoint.com/sites/2DCC-ListStagingData/Shared%20Documents/TestMigration)

SharePoint Site: 2DCC-ListStagingData (That is a private channel inside the 2DCC Team)\
Document Library: Documents\
Root Folder: /TestMigration/

### [Temporary Sharing Folder](https://pennstateoffice365.sharepoint.com/sites/2DCC-Data/Staging/Shared%20Data)

SharePoint Site: 2DCC-Data\
Document Library: Staging\
Root Folder: /Shared Data/

## Production Environment

### [File Storage](https://pennstateoffice365.sharepoint.com/sites/2DCC-LiSTData/Shared%20Documents/Data)

SharePoint Site: 2DCC-ListData (That is a private channel inside the 2DCC Team)\
Document Library: Documents\
Root Folder: /Data/

### [Temporary Sharing Folder](https://pennstateoffice365.sharepoint.com/sites/2DCC-Data/Shared%20Data)

SharePoint Site: 2DCC-Data\
Document Library: Shared Data\
Root Folder: /





