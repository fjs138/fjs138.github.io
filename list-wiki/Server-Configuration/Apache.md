---
layout: post
title: Apache
---

# Enforce HTTPS

The first section forwards each unencrypted access to https:

```plaintext
<VirtualHost *:80>
        RewriteEngine On
        RewriteCond %{HTTPS} !=on
        RewriteRule ^/?(.*) https://%{SERVER_NAME}/$1 [R,L,C]
</VirtualHost>
```

# Allow iframe
Header set X-Frame-Options "allow-from https://www.mri.psu.edu"
is needed for all environments to be included in mri web site (i.e. production environments)

# Reverse proxy configuration

LiST and STEP FORWARD are independent applications running on the web server (could be somewhere else, too), each listening at another port, and only accessible from the web server.

The apache web server is used to forward requests to the different .NET applications. To distinguish the applications, the requested path is used. This mapping is configured in `/etc/httpd/conf.d/vhost.conf`.

## Reverse Proxy per .NET service

For each .NET service that should be accessible, a `Location` is configured.

All requests with that path are forwarded to a .NET service configured via `ProxyPass`.

```plaintext

       <Location /{path-prefix}>
                ProxyPass http://localhost:{port}/{path-prefix}
                ProxyPassReverse http://localhost:{port}/{path-prefix}
       </Location>
```

# Shibboleth

LiST is normally using Microsoft Azure for authentication but can also use Shibboleth. 

If Shibboleth is used (on the Staging and Production server), Apache has to be configured \
with AuthType shibboleth to make the shibboleth user available to the dotnet application.\
requireSession has to be set to 0 (or false). LiST enforces authentication itself, giving users\
the choice to use either Azure AD (with Penn State ID) or Shibboleth (with an ID from any institution in the InCommon Federation), so Apache should not enforce Shibboleth usage.

This is done via HTTP Headers, and a detail configuration which headers are to be made available has to be included.\
Shibboleth is configured to get the attributes

* eppn (<span dir="">eduPersonPrincipalName</span>, for Penn State that would be psuid@psu.edu), 
* givenName (First name) 
* sn (Last name)

```plaintext
AuthType shibboleth
ShibRequestSetting requireSession 0
require shibboleth

RequestHeader Set eppn %{eppn}e env=eppn
RequestHeader Set givenName %{givenName}e env=givenName
RequestHeader Set sn %{sn}e env=sn
```





