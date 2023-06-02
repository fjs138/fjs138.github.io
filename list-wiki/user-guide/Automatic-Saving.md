---
layout: post
title: Automatic-Saving
---

# Automatic Saving

LiST saves all changes automatically (except for new projects where an ID is generated).
Automatic saving happens with a short delay, so that saving only happens after the user stopped entering data.

All data is initially saved in pending status. While pending, data can be modified or deleted and is only visible to project collaborators. Pending objects are shown with a "*" in the tree.  

![image]\(/list-wiki//uploads/735b8a250765826e50db133156d356bf/image.png\)

## Status: New, Pending, Submitted

The status of an object is shown in the footer, together with buttons to modify this status. If the data has already been saved, the date of the latest modification is shown together with the user who saved this modification.

* **New**  
Some activities can not be saved immediately since some key fields have to filled first. Synthesis and Characterization activities require the instrument to be selected before the activity can be saved.
![image]\(/list-wiki//uploads/dd3ecc65c76abf341551c9afc8a6956a/image.png\)
* **Unsaved**  
When modifications have not yet been saved, the footer shows a button that allows to save immediately. Saving will be done after a delay automatically. If the browser is closed while there are unsaved data, a warning will be shown.
![image]\(/list-wiki//uploads/a91c86e917af20b91ec1cf57fad57c55/image.png\)
* **Pending**  
Any data object that has been saved to the server, but not yet submitted is in pending status. The browser can be closed and reopened later without loosing any data.
![image]\(/list-wiki//uploads/92097f2c3a7c34489a6ff4b0e36cb756/image.png\)
Two buttons in the footer allow submitting or deleting of the data object.
* **Submitted**  
Submitted data is considered to be final. It cannot be deleted any more and allows only limited modifications. The visibility can always be changed, in the case of samples, it is possible to categorize them as "Process Development" or "Research", describe their quality or modify the sample holder field.
Should further modifications be necessary, an administrator can reset the status to Pending.
![image]\(/list-wiki//uploads/17fd35e3571815499e69c4f739c5a142/image.png\)






