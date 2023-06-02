---
layout: post
title: Bulk-Table-View
---

# Bulk Table View

![image]\(/list-wiki//uploads/c92483beded5ca135ecf3b2fb496289d/image.png\)
Bulk samples are presented in a table view. It consists of 
1. The main menu allows creating new samples, started a growth using selected samples etc.
All actions are also available via the context menu. There are some actions that can only be invoked via the context menu.
2. The search area can be used to restrict the number of samples shown.
3. The table samples. It can be selected if pages of 25, 50 or 100 samples are loaded or all samples are shown in the table.
4. The paging buttons allow navigation the  pages of samples.

As in the Project View, all changes are saved automatically (see [Automatic Saving](user-guide/automatic-saving))

## Table sections

The table consists of the following column groups:
* Growth Run
  This group contains researcher, date and technique as well as the growth ID 
  (which itself codes date, researcher and instrument). The growth ID is generated automatically and allows opening the growth   run in the [Project View](user-guide/working-with-samples). All after-growth activities like 
  * Splitting a sample
  * Transfer a sample to another project
  * Upload Characterization data
  * Initiate shipping (not yet working)
  can be done there. It is also possible to delete the growth run (if it has not yet been submitted, see [Status](user-  guide/automatic-saving#status-new-pending-submitted))
* Project
  This group shows the project ID and the user of the project. For pending growth runs, it will be possible to modify the project (not yet working).
* Sample
  This column group contains the (automatically generated) Sample ID, preparation date and ID and a number of columns showing an the key information of the Sample Preparation Recipe. The recipe itself can be displayed and modified using the ![image]\(/list-wiki//uploads/dbe59d0ece541bd3809c0b4af505f777/image.png\) button. This opens the Preparation Recipe in a popup. If changes are made and saved, the table will be updated.
* Synthesis
  This column groups shows data on the synthesis run: the instrument used, the runtime and key information extracted from the growth recipe. Similar to the Sample Preparation Recipe, it can be opened in a popup and modified using the ![image]\(/list-wiki//uploads/dbe59d0ece541bd3809c0b4af505f777/image.png\) button.
* Compounding
  The last column group, Compounding, contains the same columns as the Synthesis Group. This allows recording growth runs consisting of instrument runs for compounding and synthesis. All instrument usages that does not yet produce the final sample should be recorded as compounding since the instrument time has to be reported differently in this case.





