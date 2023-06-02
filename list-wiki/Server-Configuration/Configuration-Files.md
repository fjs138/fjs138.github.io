---
layout: post
title: Configuration-Files
---

For each dotnet application running on the 2dcc web server, there is a configuration folder `etc`, containing the following files. The application is configured via appsettings.json, the other appsettings.\*.json are optional and all options could be moved to the primary appsettings.json file.

## env.conf

This file is used to name the application, `list` or `stepforward`. It is a bash script included during deploy defining an environment variable:

```plaintext
#!/bin/bash
export app=list
```

The variable `app` is used to get and install binaries, they are located in `/var/dotnet/versions/{app}`

## nlog.config

Configures what and where to log

## appsettings.json

Configuration of the dotnet web server.

### Section `AzureAD`

Configuration for Azure AD authentication. Tenant ID is PSU, ClientId is the application ID from the [Azure AD Portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/ManagedAppMenuBlade/Overview/appId/ee28819c-5059-493c-a8c8-8a2cf9c2b2bb/objectId/07b66028-8539-48ab-824c-8c2dcd708735)

```plaintext
AzureAD: {
    Instance: https://login.microsoftonline.com/,
    TenantId: 7cf48d45-3ddb-4389-a9c1-c115526eb52e,
    ClientId: ee28819c-5059-493c-a8c8-8a2cf9c2b2bb,
    Domain: psu.edu,
    CallbackPath: /signin-oidc
}
```

### Section `Database`

Contains two attributes:

- `ConnectionStrings`\
  Which database to use and how to connect. Can use one of the following configurations:
  - `SqliteFile`\
    Path to the database file
  - `2dccDatabase`\
    SQL Server Login string\
    Server=x.x.x;Database=XXX;User Id=2DCC_User;Password=xxx
- `EnableSensitiveDataLogging` \
  Can be set to true, then all SQL parameters are logged (if logging for sql commands is enabled via nlog.config

### Section `Main`

- `Port` / `PathBase`\
  The server will listen on `localhost:port/pathBase`\
  Each application has to use a different `port` and a different `pathBase` so that the apache server can forward correctly. The appache web server has to be configured in accordance with this parameters in order to connect to the dotnet server.
- `UseHttps` \
  If set to true, the dotnet application itself will only be accessible via HTTPS. Normally, the apache servcers is handling the HTTPS and connects to the dotnet application on localhost using HTTP.

### Additional attributes

- `ShowDevErrorPage`\
  If set to true, the error page includes stacktraces etc. Useful on test/integration systems, can be enabled temporarily on production system in order to track down a bug
- `Environment`\
  Name of the environment. If any other name than "Production" is used, the environment name will be shown in the application.
- `AllowAnonymous`\
  If set to true, unauthenticated requests are allowed (using the community role). \
  Otherwise, any unauthenticated requests will be forwarded to a login page.
- `EnableShibboleth`\
  If set to true, authentication requests will be sent to a discovery page where the user can select to log in \
  with PSU ID or with InCommon Federation ID. If deactivated, authentication requests are sent to Microsoft Login directly.

## appsettings.filehosting.json

### Section `FileHostingConfig`

Configuration where LiST stores uploaded files

- `Provider` \
  Should be OneDrive now. Not all recently added features are work with Box as File Hosting Provider
- `Hostname` Should be the PSU SharePoint Hostname, `pennstateoffice365.sharepoint.com`
- `SitePath`\
  Path to the SharePoint site used to store files. Has to start with `/sites/`
- `DriveType`\
  Only for OneDrive: The type of drive used; currently only `Site` is supported (SharePoint site)
- `DocumentLibrary` Name of a document library within the SharePoint site. Optional, if empty, the Default "Share Documents" library is used.
- `RootFolderName`\` Optional, a path within the document library can be used as root folder. If empty, the document library itself is the root folder

### Section `FileshareTempStorage`

Configuration where LIST creates temporary folders for sharing with (external) users. This section contains the same attributes as `FileHostingConfig` above. Has to be a SharePointSite that allows anonymous links.\
Additional Attributes determine the validity of those temporary folders and the clean-up job:

* `LinkValidity` Make links valid that number of days. Default 2
* `ParallelCopy` When copying files, uses that many parallel threads. Too many parallel copy threads will cause GraphAPI to throttle, 4 seems reasonable for the moment.
* `CleanupCron` A string in the format `HH:MM` defining when the clean-up job shall run that removes all folders whose link is no longer valid.

### Section `ShippingNotification`

When a sample shipping request is submitted, or when the samples have been shipped, LiST notifies about the shipping request.

* `TeamId`\
  `e0bdec21-ceff-46da-86e7-2d7d16b8be4e` the 2DCC Team
* `ShippingChannelId`\
  `19:91af8f6213ed4c76b4cc7a7b2178bb1c@thread.skype`, the channel used to notify.
* `ServerUrl` The notification contains a link to the shipping request, this should be the URL to the LiST Instance, `https://server.vmhost.edu/list/`
* `UserId` The ID (psu email) of the user notified about new shipping requests
* `UserName` Optional, the name of the user notified about shipping requests.

### Section `GraphApiConfig`

This section contains the application ID for the service account LiST is using to connect to Office365 (SharePoint and Teams), as configured in the [Azure AD Portal](https://aad.portal.azure.com/#blade/Microsoft_AAD_IAM/ManagedAppMenuBlade/Overview/appId/ee28819c-5059-493c-a8c8-8a2cf9c2b2bb/objectId/07b66028-8539-48ab-824c-8c2dcd708735).

```
"GraphApiConfig": {
     "Instance": "https://login.microsoftonline.com/",
     "TenantId": "7cf48d45-3ddb-4389-a9c1-c115526eb52e",
     "ClientId": "5217329e-d161-4829-9d48-c90925d298e7",
     "ClientSecret": "<secret>",
     "ServiceAccount": "other_d5b541ae834a49@psu.edu",
     "Password": "<password>",
     "Domain": "psu.edu",
     "Proxy": "http://proxy.psu.edu:8080",
     "OverallTimeoutInMinutes": 10
}
```

GraphAPI calls seem to somehow bypass the system proxy configuration, therefor it is necessary to configure the proxy directly in the HTTP client in LiST, using the URL from the configuration file. This is optional, and not necessary on CentOS or on windows. 





