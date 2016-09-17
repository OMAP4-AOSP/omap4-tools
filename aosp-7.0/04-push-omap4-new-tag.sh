#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-7.0
OMAPTAG="android-7.0.0_r1-omap4"

echo "----------------------------------------"
echo ""
echo "    P U S H  N E W  O M A P 4 - T A G   "
echo "            OMAP4-AOSP PROJECT          "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/bionic
git tag -a $OMAPTAG -m 'Android 7.0.0 R1 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_bionic.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
git tag -a $OMAPTAG -m 'Android 7.0.0 R1 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_bootable_recovery.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git tag -a $OMAPTAG -m 'Android 7.0.0 R1 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_build.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git tag -a $OMAPTAG -m 'Android 7.0.0 R1 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_frameworks_av.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git tag -a $OMAPTAG -m 'Android 7.0.0 R1 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_frameworks_native.git $OMAPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git tag -a $OMAPTAG -m 'Android 7.0.0 R1 for OMAP4'
git push https://github.com/OMAP4-AOSP/android_system_core.git $OMAPTAG
echo ""
echo "----------------------------------------"

echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"