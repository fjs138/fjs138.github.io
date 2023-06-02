---
layout: post
title: Working-with-Samples
---

### Configure Sample Tree

When a project is selected, all samples on this project are display on the left side in a tree view. This sample tree view ca be configured via the User Settings Menu\
![image]\(/list-wiki//uploads/3043b4ebf6570092e3e664def254ad15/image.png\)

Samples are grouped by shipping (see [Ship Samples](user-guide/ship-samples)) if there are shippings for the project, and by age. Shipped samples can be included in the list of all samples or only be shown as part of their shipping.

The "Recent samples" folder groups only the recently created samples and allows creating new samples. The default of 14 days for the Recent Samples can be modified in the user settings.

Samples are sorted by their creation date, either with the oldest or the most recent sample on top. This can also be configured in the user settings.

![image]\(/list-wiki//uploads/8db4594d7ad0e09aba3301fd44c06c6b/image.png\)

### Create a Sample

To add a sample to LiST, you first have to select the project it is associated with. That choice is not final, samples can be transferred later if necessary.

In there project view, new samples are added using the "Samples" context menu ![image]\(/list-wiki//uploads/5fbee0ab57fb6a326a4d5573c80c36b7/image.png\)

For a sample that is (to be) grown at 2DCC, choose "New samples". For an existing sample grown elsewhere that is only characterized using 2DCC equipment, choose "Characterize Sample".

#### New sample

![image]\(/list-wiki//uploads/428cf3fa8acf7ad509027fd887831717/image.png\) 

For each sample, a target instrument has to be selected. That instrument's ID will be used to generate a sample ID. Synthesis steps in other instruments can be added later. Another part of the sample ID is the growth date, by default, this field is initiated with the current date. Once a sample has been created, the sample ID can't be changed in LiST. Should you need to change the date and the sample ID, you have to contact the LiST data manager.

Description, Size, Thickness and Sample holder are optional fields, they can also be changed later.

In the field "activity", choose if you want a Synthesis or a preparation activity to be added as first activity. You can add more activities or delete them later if necessary.

Each sample is associated with a substrate. The substrate can be selected from the existing substrates, or a new one can be entered using the "+" Button ![image]\(/list-wiki//uploads/0d95f2639a5239389de545bbed7d4ea5/image.png\)

Alternatively, an existing sample (usually grown in another 2DCC instrument) can be chosen as a substrate. This can be done by entering the sample ID or using the ![image]\(/list-wiki//uploads/7cb1aaf2773abff6a6b4c412f04ce341/image.png\) button to search for a sample.

![image]\(/list-wiki//uploads/8abe70774dc5d002e7c7bac1efc0e991/image.png\)

### Submit a Sample

Samples are submitted when they have been synthesized and all synthesis data is available in LiST. This happens automatically after 30 days, if the sample is valid, i.e., the following data are available:

* At least one synthesis activity exists.
* That synthesis activity defines the material that was grown.
* There is growth recipe available.

Sometimes samples have to be submitted also when not all of those criteria are met. One example would be a substrate that has been characterized as is. Those samples can only be submitted manually.

It might also happen that a sample exists where the growth recipe is simply not available. In that case we still need the sample, and a synthesis activity should be added with an estimated growth time, and then be submitted manually.

Once submitted, no further growth or post-processing activities can be added, and those activities can no longer be changed.\
Characterization activities however can be added to LiST any time, as well as Split activities.

### [Upload Characterization Data](user%20guide/upload%20folder)

### Split a Sample

Samples can be marked as split into sub samples manually in LiST by adding a Split activity. That can also be done with submitted samples.

LiST will add a split activity automatically when characterization data is discovered for pieces of a sample.\
For instance, if there is a sample MBE1-201102A-XY and characterization data is discovered for MBE1-201102A-XY5 or MBE1-201102A-XY.5, LIST will assume that the sample has been split into at least 5 pieces and add a split activity. Then the characterization data will be attached to piece #5.\
..

### [Transfer a Sample to another project](user%20guide/Transfer%20Sample)

### [Ship samples](user%20guide/Ship%20Samples)





