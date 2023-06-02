---
layout: post
title: Regular-Checks
---

## Automatic Sample Submit

LiST submits samples automatically 30 days after they were grown, and 14 days after being entered into LiST. Before submitting a sample, a validity check is performed.

A monitor in the LiST web application allows tracing this automatic submit:\
![image]\(/list-wiki//uploads/7599d1b92ae538e657c9ca296a4f9b56/image.png\)

Setting the "Filter Status" to "Sample not valid" shows a list of samples that LiST could not submit automatically. (Some research groups have old samples to clean up here. So restricting to samples grown after 12/1/2020, ie. for the ongoing reporting period, might be helpful. The rest has to be dealt with later.)

This check has to be done by research group.

![image]\(/list-wiki//uploads/02a76253da8f1c06eb4c15cf0b88d5d6/image.png\)

In most cases, validation fails because data is missing, either the instrument time, the material, or the whole growth recipe. LiST automatically retries to submit weekly, so if the researchers correct the issue, LiST submits automatically.

LiST checks for data that is most likely missing, but in some cases, it might actually be correct, like substrates that were characterized without growing any material on it. Those samples can only be submitted manually. LiST informs about that in the error message. ![image]\(/list-wiki//uploads/9a72e2a370f712c9c325acc065eb38b8/image.png\)

Research groups have access to this monitor and should track this, but they do need a reminder once in a while.

## <span dir="">Automatic Sample Import</span>

LiST is importing samples automatically for the following synthesis instruments:

* MBE 1
* MBE 5
* MBE 6
* MOCVD 1

That import relies on meta data the researchers have to provide when starting the growth. If those data are missing, LIST cannot create the sample and will report an error in the sample import monitor.

![image]\(/list-wiki//uploads/b57f5427fd818f752b4035821e0e2254/image.png\)

It should be checked that there are no import with an error status (\`Error - Sample not created\`).

![image]\(/list-wiki//uploads/a348da186750bd2e0982fed934c12ad4/image.png\)

The Message field can be expanded and show details what went wrong. Common issues are 

* Missing project\
  Researcher started growth run without indicating the project. \
  Remind Anthony Richardella (arr19@psu.edu) for MBE or Chen Chen (cuc33@psu.edu) for MOCVD.
* Unknown project\
  Sometimes samples are already produced, and the projects does not yet exist in LiST.\
  If it is an external user project (Project ID not starting with capital I), notify Kevin Dressler. For in-house projects, notify the aforementioned instrument managers. That project has to be added before a sample can be imported.\
  LiST retries importing the sample a number of times, the import can also be restarted via the ![image]\(/list-wiki//uploads/d97a5360106c093791df220ab3cd693c/image.png\) button.

## Characterization Data Upload

Characterization data is stored on SharePoint document libraries, most research groups use their own document library to organize their characterization data. LiST watches those document libraries and integrates all data automatically, if the data can be associated with a sample and that samples exists in LiST.

A monitor in the LiST web application allows tracing this automatic upload:\
![image]\(/list-wiki//uploads/274f1000928388ed4cffbb52efa457ea/image.png\)

Setting the filter to "With upload issues" shows all data that could not be integrated into LiST. Not all samples made before the adoption of LiST have been added, so it is best to filter for characterization data uploaded in the current reporting period starting December 2020.

![image]\(/list-wiki//uploads/754eb68d449e4eff61961b413aa4b537/image.png\)

Most common problem is "Sample not found", there is data, but the sample has not yet been added to LiST.

In some cases, data are mislabeled, eg. an incorrect characterization date is added like \
`XRD4_MBE1-211207A-AR_212109` - Most likely should have been 211209, or there is no characterization date at all.

In any of those cases the researchers have to fix their data first, LiST is reprocessing all files and will integrate them once the errors are fixed, or the missing samples have been added.

## Checking Bulk Samples

The Bulk group is a bit slow at times in updating List. Easiest way to check is opening the specific [Bulk View](https://m4-2dcc.vmhost.psu.edu/list/Bulk) and sort by growth date. If the most recent sample is weeks old, please remind Seng ([shl12@psu.edu](mailto:shl12@psu.edu))





