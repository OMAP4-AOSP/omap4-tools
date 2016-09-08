#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-7.0

echo "----------------------------------------"
echo ""
echo "          F O R C E  P U S H            "
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/bionic
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_bionic.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_bootable_recovery.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_build.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_frameworks_av.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_frameworks_base.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_frameworks_native.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_hardware_ril.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git checkout -b aosp-7.0
git push https://github.com/OMAP4-AOSP/android_system_core.git HEAD:aosp-7.0 -f
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"