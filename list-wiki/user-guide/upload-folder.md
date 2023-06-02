---
layout: post
title: upload-folder
---

## Uploading Characterization Data

### Via the web browser

### Upload Folder

Characterization Data can be uploaded to LiST by placing the files in the 
[Upload Folder on Box](https://psu.app.box.com/folder/7847510663)

- If you use Box Sync, you can just copy files there. 
- LiST is reading this folder and moving the files to the samples.
- Samples still have to be added to LIST before.
- Characterization activities are created automatically but not submitted. So you have the possibility to review (and correct) the uploaded data before submitting it.

The upload folder contains a sub folder per characterization instrument. 
Characterization files should be placed in a folder named after the Sample ID.
This could look like this:

LiST Upload
+ XRD1 - PANalytical XPert Pro MPD
   + MBE2-190412C-MH
      +  MBE2-190412C-MH_Reflectivity2.xrdml
      +  …

#### File Upload Records

LiST keeps a record for all files in the upload folder.  
![image]\(/list-wiki//uploads/d905667642d164f4174c7c75036d36e5/image.png\)  
It shows all files put in the upload folder, and which files could not be processed.

![image]\(/list-wiki//uploads/ecdea1c3c5246974877d80f86aceea2d/image.png\)

Entries in this table are kept for 30 days, errors are kept until they are deleted.

When LiST cannot identify a sample, files get moved to the ErrorFolder (Subfolder of the Upload folder).
If it was just a sample that did not exist at the time of uploading, you can move the files back into the Upload folder after creating the sample.






