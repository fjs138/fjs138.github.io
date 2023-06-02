---
layout: post
title: Environments
---

2DCC uses three virtual servers:

### Development - mri-2dccwebsrv.vmhost.psu.edu

The development server still uses CentOs 7. Updates are installed via cronjobs.

It hosts the development environments for both [LiST](https://mri-2dccwebsrv.vmhost.psu.edu/data-dev) and [STEPFORWARD](https://mri-2dccwebsrv.vmhost.psu.edu/stepforward-dev)

The development server compiles the applications and creates (and archives) zip files that can be deployed to staging and production.

Shibboleth is not installed on the development server (and Shibboleth integration is deactivated via configuration files).

All environments used to run on that server, Apache still forwards old links to the staging & production server.

Databases used: 

* LiST: dev_2DCC_bak
* Stepforward: uses SQLite 
* [LiST uses SharePoint to store files](/Environments/SharePointSites#development-environment)

TODO:

* Migrate to RHEL 8, like staging and production
* Server should only be accessible from within Penn State Network, too

### Staging - m4-2dcc-staging.vmhost.psu.edu

The staging server runs RHEL 8.  Updates are not installed automatically.

It hosts the staging environments for both [LiST ](https://m4-2dcc-testing.vmhost.psu.edu/list)and [STEPFORWARD](https://m4-2dcc-testing.vmhost.psu.edu/stepforward).

Gitlab-runner is installed, but only deploys an archive compiled on the Development server.

The staging server is only accessible from within the Penn State Network. (Requires VPN when working remotely)

Basically, a copy of the production server, except for the database used and the storage space on SharePoint.\
Shibboleth is installed, but only uses the Penn State Identity Provider.

Databases used

* LiST: dev_2DCC_mig
* STEPFORWARD: dev_2DCC
* [LiST uses SharePoint to store files](/2DCC/LiST/-/wikis/Environments/SharePointSites#staging-environment)

### Production - m4-2dcc.vmhost.psu.edu

RHEL8, same configuration as Staging. Updates are not installed automatically.

This server hosts the staging environments for both [LiST ](https://m4-2dcc.vmhost.psu.edu/list)and [STEPFORWARD](https://m4-2dcc.vmhost.psu.edu/stepforward).

Gitlab-runner is installed, but only deploys an archive compiled on the Development server. (CI configuration assures that only versions successfully deployed to Staging can deployed here).

Shibboleth is configured to use InCommon Federation Discovery page, users from other institutions can log in.

Databases used:

* LiST: 2DCC
* Stepforward: StepForward
* [LiST uses SharePoint to store files](/2DCC/LiST/-/wikis/Environments/SharePointSites#production-environment)





