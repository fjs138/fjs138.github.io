---
layout: post
title: ship-samples
---

# Ship samples 

Shipping is part of the sample and life cycle and should be tracked in LiST. 

## Start a shipping
A shipping is initiated via the context menu of the Samples node:  
![image]\(/list-wiki//uploads/51fd9a90fd7210daacd1088c4daa313c/image.png\)

Like most data objects in LiST, the shipping object is saved to the server in a pending state, 
allowing the researcher to start recording whatever information is available and complete it later.
The shipping object in LiST contains all data required to create shipping labels and can therefore replace the label request form. 

Once the shipping has been initiated, samples can be added to it. For each sample, a label type has to be chosen.
Samples can be added by entering the Sample ID and clicking on "Add Sample", or by using by selecting from the list of all samples of the current project that are not yet associated to a shipping. This list is opened via the button ![image]\(/list-wiki//uploads/5111e44af35710995bd8a370c819ecc6/image.png\)
 
LiST will validate if the sample is associated with the same project as the shipping and not yet shipped. Samples grown on other projects have to be [transferred to a project](user guide/Transfer Sample) first before they can be added to a shipping on the project. When a sample has been added to a shipping, it is displayed as sub object of the shipping  
![image]\(/list-wiki//uploads/bfd0518ddaeaeaec66a524c4a76690ad/image.png\)   
and is only included in the list of samples on the "My samples" page when the checkbox "Include shipped" is selected.

It is configurable if a shipped sample in only shown as sub object of the shipping or also in the list of all samples.
If the latter is chosen, the icon ![image]\(/list-wiki//uploads/ab500958ba975aa4ee8ad9e19470cc28/image.png\) allows to distinguish shipped samples from samples that still await shipping:

![image]\(/list-wiki//uploads/d4dde24cfbc9348db8de7ecd24b5d3d9/image.png\)

If there exists already a shipping for the current project, the fields "Contact Name" and "Budget" will offer a drop-down list of the values used for those earlier shippings. After a contact has been chosen, email, phone and shipping address are populated with the data from a earlier shipping, too.

![image]\(/list-wiki//uploads/7fce90f6bb6857015fcc701cbcf0657d/image.png\)

Certification files are supposed to be uploaded to the shipping. The "Certifications" tab is a normal file tab that allows uploading files via drag and drop.

## Add Sample Requests

If sample requests are available on the project, they are shown on the shipping form.  
![image]\(/list-wiki//uploads/3bd17965c5e7ea8937bbc592619eff3c/image.png\)  
Sample Requests that shall be updated by this shipping can be selected by checking "In this shipping". 
Those requests can either be closed by this shipping (if all or the last sample(s) are contained in the shipping),
or the status can be set to "In Progress" when this shipping is a partial delivery.

Sample requests are not yet updated at the moment a shipping is associated. They are only updated once the samples have been shipped and tracking number and shipping date are available.


## Submit a shipping
A shipping has to be submitted when the samples are ready to ship and all data is available in LiST.
After submitting, labels can be printed and the actual UPS shipping is initiated. 
The entered data are then no longer editable in LiST.

The shipping form is validated before submit, it can only be submitted when all required fields (all fields in this case) are filled and if there is at least one sample that is shipped. If no certification file has been uploaded, LiST asks for confirmation before submitting. Certification files can also be added later.

## Print Label Request
The shipping page contains all information needed to print labels. The page can be printed (Use the printable view)  
![image]\(/list-wiki//uploads/2a4c16b0e3a2c229c97bd2ec19d14620/image.png\)  
or a link can be generated  
![image]\(/list-wiki//uploads/a6a57d54ce5aa557d7ecb01d0a157e8c/image.png\)


## Mark sample as shipped
As a last step, tracking number and actual shipping date have to be entered once the shipping has been handed over to the carrier.
![image]\(/list-wiki//uploads/2392cc1dd4f4194fe5cea6eca6918bb9/image.png\)

If sample requests have been associated, those sample requests are updated only after tracking number and shipping date have been entered.








