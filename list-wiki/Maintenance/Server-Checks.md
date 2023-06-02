---
layout: post
title: Server-Checks
---

## Update OS

Both the [staging](Environments#staging-m4-2dcc-stagingvmhostpsuedu) as well as the [production](Environments#production-m4-2dccvmhostpsuedu) server run the same OS version, RHEL8. Update is done via `dnf update`.

Should be done on Staging first, then restart the server, or at least LiST:

```
su dotnet
go list-staging
dotnet-stop
dotnet-restart
```
or 
```
systemctl restart kestrel-LiST-staging
```

Then check if LiST web application is available at 
https://m4-2dcc-testing.vmhost.psu.edu/list

## Check File system

`df -h`

```
/dev/mapper/myvg-rootvol       13G  6.2G  6.4G  50% /
/dev/mapper/myvg-lv_home      2.0G  1.1G 1013M  51% /home
/dev/mapper/myvg-lv_versions  2.0G  1.4G  648M  69% /var/dotnet/versions
```
- Home partition\
  gitlab-runner might fill this up, but only if versions are deployed. 
  Even then disk usage should be rather constant
- /var/dotnet/versions\
  Deployed versions are copied here. This can be cleaned up, but as long as no versions are deployed, nothing should happen.
- root\
  dotnet applications live under /var/dotnet. Log files can take up some space, 
  but rotating logs are used, and old logs are zipped. \
  check `/var/dotnet/list-prod/log` if needed, move logs out.\
  check `/var/dotnet/list-prod/etc/nlog.conf` if there a large unzipped files.
  
## Check or restart dotnet application









