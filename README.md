XMIPP
============

###Bash scripts for XMIPP 2.4 and 3.1

#####apply_geo.csh

The following automated csh script will first apply the translation and then the rotation for all particles in a docfile. This script should be run from the same directory as from where the mltomo program was launched (so that the relative filenames in the docfile point to the correct files).If one saves this script as apply_geo.csh and makes it executable, the syntaxis for running it would be:

```./apply_geo.csh MLtomo/run1/mltomo_it000010.doc app```

This would create a copy of each aligned sub-tomogram with an additional extension .app.

---
#####check_disables_rct_images

Script for XMIPP3.1 will check and remove disabled (-1) images from xmd metadata files after RCT picking.

#####prep_conic_2.4

The bellow scripts assumes that you start the conical tilt experiment with Xmipp and with the default options (you store micrographs in the “Preprocessing” directory and extracted images in the “Images” directory). When you finished picking in Xmipp, extract and process both the tilted and untilted images with “Preprocess Particles” still in Xmipp. Then run the ”prep_conic.b” script. This will create in the Xmipp home folder an untilted (untilt_stack.img) and a tilted stack (tilt_stack.img).

---
#####prep_conic_3.1

The bellow scripts assumes that you start the conical tilt experiment with Xmipp3 and with the default options (you store extracted images in the “Images/Extracted/run_***” directory). When you finished picking in Xmipp, extract and process both the tilted and untilted images with “Extract Particles” still in Xmipp. Then run the ”prep_conic3.b” script. This will create in the Xmipp home folder an untilted (untilt_stack.img) and a tilted stack (tilt_stack.img).

---
#####split_by_class3D

This script for XMIPP2.4 will split 3D volumes by classes based on last mltomo classification iteration. User can select which classes he wants to extract.

---
#####xmipp2imagic

This will write the Euler angles gathered from the alignment and Xmipp to the header of the tilted stack. You can use msa-extract to extract images belonging to a certain class from the tilted stack and reconstruct the corresponding conical tilt structure.

---
#####xmipp32imagic

This will write the Euler angles gathered from the alignment and Xmipp3 to the header of the tilted stack. You can use msa-extract to extract images belonging to a certain class from the tilted stack and reconstruct the corresponding conical tilt structure.

---
#####prepare_ml_tomo_2.4

This will create wedges.doc, images.doc and images.sel files to prepare for ML_TOMO run
