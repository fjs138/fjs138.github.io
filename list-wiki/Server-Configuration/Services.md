---
layout: post
title: Services
---

Each .NET application is run by a service and configured in `/etc/systemd/system`.
The configuration for these service is the same for all .NET applications.
`{env}`  is the name of the environment and `{app}` the name of the application (LiST or Stepforward).
Services and thus configuration files are named `kestrel-{env}.service`. (Kestrel is the .NET server).

```
[Unit]
    Description=LiST Lifetime Sample Tracking

[Service]
    WorkingDirectory=/var/dotnet/{env}/RT
    ExecStart=/usr/share/dotnet/dotnet /var/dotnet/{env}/RT/{app].dll
    Restart=always
    # Restart service after 10 seconds if dotnet service crashes
    RestartSec=10
    SyslogIdentifier=dotnet-{env}
    User=dotnet
    Environment=DOTNET_CLI_TELEMETRY_OPTOUT=1

[Install]
    WantedBy=multi-user.target
```

The services is activated via 
```
systemctl enable {filename}
```





