---
layout: post
title: Setting-up-projects
---

## In-house projects

In-house projects can also be created by faculty or instrument managers, but that task occasionally gets delegated to the data manager(s).

![image]\(/list-wiki//uploads/3efc3e205cf40ce5951878424c7f97f1/image.png\)

- The type has to be `In-House`. Kevin takes care of all external projects.
- The project ID has to start with an upper case I.
- User PI is the faculty in case of in-house projects.
- The Project Status has to be set to `approved` (other status are only used for external projects, where users have to submit a proposal).
- Staff and techniques have to be named by the faculty who requests that project.

Projects can (and should be) submitted!

## Data-only projects

Data-only projects are external projects where existing samples are linked and made accessible to the external user(s). Normally, no samples are grown on those projects. The project is initially set up like any other user project by Kevin, but samples have to be linked to the project afterwards.

LiST uses data packages to link samples to additional projects other the one where they were produced. (It is also possible to transfer samples from one project to another, but that is used if a sample should belong to a new project, eg. grown as in-house research, but later shipped to a user. It is no longer part of the initial project then).

The data package view can be accessed from data-only project via a context menu link:

![image]\(/list-wiki//uploads/bcceddf8db79a129718719f9bd1daac9/image.png\)

It allows adding one (or more) data packages to a project (also via the context menu) and adding and removing samples from such data packages. Data packages follow the same status lifecycle as all objects in LiST, they can only be modified while pending, and have to be submitted before being taken into account for user access. External users of a data-only projects will only see samples that have been linked via a submitted data package. (Since external users normally do not have the privilege  `AccessPendingSample.`

Samples can be removed one by one, and for adding samples, the regular sample lookup is used. The context menu entry `Add Samples to Data Package` open a sample table that can be filtered, and where the samples to add are selected.

![image]\(/list-wiki//uploads/9384c9fd5ffee2201ff87f5f774a1bd1/image.png\)

## RSVP projects

RSVP projects are external projects where the user works on-site and thus need full access to LiST for their own project. <span dir="">The project is set up by Kevin like any other external project, but the user need to added as collaborator with an additional role, as described further down in the section </span>[Add users to external projects](/2DCC/LiST/-/wikis/Maintenance/Setting-up-projects#add-users-to-external-user-project)<span dir="">. RSVP users have to be added with the additional role "Project - External Researcher" which gives them all the privileges local researchers have, but for their project only.</span>

## Add researchers to projects

Researchers can also be added to a project later (as well as materials or growth techniques, if requested). If a researcher who is not yet in LiST is to be added to a project, that user first has to be added in the customizing view.

Researcher should not be removed (and especially not be deleted) from projects, at least not if those researchers did grow samples on that project. We want to keep that record. People no longer working at 2DCC can be deactivated by removing there PSU ID in the customizing view at <https://m4-2dcc.vmhost.psu.edu/list/Customizing>. LiST will no longer associated there PSU account with that user account anymore, so they will only see the public data.

## Add users to external user project

- External user projects are in many cases initially set up with only the PI. If the PI later requests that collaborators shall have access to that project, we have to add those to the project.
- for **RSVP** projects, the PI is an on-site user and needs the privileges to add samples and characterization data. The User PI role alone does not grant those privileges, so the same user has to be added with a second role.

Collaborators are added on a dedicated tab:\
![image]\(/list-wiki//uploads/e7f5be09bc2b7443368b96dce127716d/image.png) Via the ![image](/uploads/f1609168fa9a973ccd4e71af0b5b9147/image.png) button an existing user can be selected and added to the project, but mostly those collaborators will not yet be in LiST and have to be added with ![image](/uploads/698c2bebadb42d65a730346d53676e21/image.png\) first.

If the collaborator is working on-site and has a PSU ID it can be added in the PSU ID field, mostly they will only use Shibboleth with their institution ID (eppn = EduPersonPrincipalName). Best guess is here the email they gave us, if that does not work, see next paragraph.

Available Roles:

- Project - Viewer\
  This role gives a user read-only access. For instance, for Data-Only projects.
- Project - User Group\
  This role gives the same privileges as the PI. Used for other collaborators like co-PIs, or students in the PI's group.
- Project - External Researcher This role grants the same privileges that 2DCC staff have, but for this project only. Used for on-site users who grow their own samples add characterization them (eg. RSVP) and add that data to LiST.





