---
layout: post
title: User-Requests
---

## Reset pending samples (or activities)

LiST saves all data [automatically ](user-guide/automatic-saving) in a pending state, allowing users to edit and delete data while it is still pending. Data then has to be submitted, manually by the user, or automatically after 30 days. 

If a researcher needs to make changes after a sample or a sample activity has been submitted, an admin has to reset the object to pending.
Samples can be located via the sample search in LiST, or a url parameter allows navigating directly to a sample:\
https://m4-2dcc.vmhost.psu.edu/list?sampleId={SAMPLE-ID}

The status can be reset via the ![image]\(/list-wiki//uploads/f0fe288aa5d372c185b3389c62c41d62/image.png) in the footer (if a user has admin privileges\).

## Add researchers to user group
This is done in the customizing view, accessible from the menu at\
![image]\(/list-wiki//uploads/a31d40cb4da420b3f9e7062224c907cb/image.png\)
 
or directly via at https://m4-2dcc.vmhost.psu.edu/list/Customizing

In-House users can be found in the `Users`->`Staff` list.

The role should be `Researcher` for users added to a research group, and the synthesis technique(s) they are working with have to selected to give them access to those instruments.

The PSU-ID is how LiST identifies users. Authentication is done via Azure AD, so anybody at Penn State can log in. But if LiST does not find a user with that PSU ID the privileges for anonymous access are used, ie. only publications and general overview about available samples are accessible.

## Check external user ID (eppn received from their institution's identity provider)
When using shibboleth and the identity provider of another institution, that identity provider will communicate the eppn (EduPersonPrincipalName) to LiST. That often is the email they are using, but it could be another alias than the email address we know. 

Similar to log in with Penn State Account (via Azure AD), anybody can log into LiST using Shibboleth and their institution's identity provider. If there is no user in LiST with that eppn, LiST will assign the privileges of an anonymous user (that is only publications and available samples are accessible). That is what a user will see if the email address configured in LiST is not the correct eppn, but an alias.

At the moment, LiST only writes log files when a user logs in via Shibboleth. That log file can be found log folder of the [LiST dotnet application](Server-Configuration/.NET-Applications), /var/dotnet/list-prod/log on the [production server](/Environments#production-m4-2dccvmhostpsuedu).

A line
```
{Date} {Time}|INFO||Shibboleth user authenticated: {FirstName} {LastName} {eppn}
```
is written to that file whenever a user logs in.

If an external user does not see their project in LiST, the log file might contain the correct eppn, if the user confirms that this is indeed (also) their email, that eppn can be updated in LiST. LiST can then associate the external user with their data.

## Add Characterization Instruments
TODO

## Correct Sample ID
Sample IDs can only be updated via SQL. SampleID is a unique key in LiST_Sample.
A reason might be that samples were added on a later date and the researcher forgot to correct the growth date (which is today by default). 

When instruments were run, we do not delete samples, even if the growth failed. We still need to keep track of the instrument time (and machine learning algorithms might learn from failed runs). 

## Restore deleted data
Can only be done via SQL for the moment. For samples, activities, files, etc. there is a corresponding History table where the old version is stored when data is updated or deleted. 





