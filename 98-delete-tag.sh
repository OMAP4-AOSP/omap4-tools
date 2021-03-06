#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0

echo "----------------------------------------"
echo ""
echo "           D E L E T E - T A G          "
echo "            OMAP4-AOSP PROJECT          "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/bionic
git push --delete https://github.com/OMAP4-AOSP/android_bionic.git $1
echo ""
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
git push --delete https://github.com/OMAP4-AOSP/android_bootable_recovery.git $1
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git push --delete https://github.com/OMAP4-AOSP/android_build.git $1
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git push --delete https://github.com/OMAP4-AOSP/android_frameworks_av.git $1
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git push --delete https://github.com/OMAP4-AOSP/android_frameworks_native.git $1
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git push --delete https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git $1
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git push --delete https://github.com/OMAP4-AOSP/android_system_core.git $1
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"