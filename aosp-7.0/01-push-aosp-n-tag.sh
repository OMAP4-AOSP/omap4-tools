#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-7.0
AOSPTAG="android-7.0.0_r1"

echo "----------------------------------------"
echo ""
echo "   P U S H  N E W  A O S P - T A G      "
echo "            OMAP4-AOSP PROJECT          "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/bionic
git remote add base https://android.googlesource.com/platform/bionic
git fetch base
git push https://github.com/OMAP4-AOSP/android_bionic.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
git remote add base https://android.googlesource.com/platform/bootable/recovery
git fetch base
git push https://github.com/OMAP4-AOSP/android_bootable_recovery.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git remote add base https://android.googlesource.com/platform/build
git fetch base
git push https://github.com/OMAP4-AOSP/android_build.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git remote add base https://android.googlesource.com/platform/frameworks/av
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_av.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git remote add base https://android.googlesource.com/platform/frameworks/base
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_base.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git remote add base https://android.googlesource.com/platform/frameworks/native
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_native.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/opt/telephony
git remote add base https://android.googlesource.com/platform/frameworks/opt/telephony
git fetch base
git push https://github.com/OMAP4-AOSP/android_frameworks_opt_telephony.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git remote add base https://android.googlesource.com/platform/hardware/ril
git fetch base
git push https://github.com/OMAP4-AOSP/android_hardware_ril.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git remote add base https://android.googlesource.com/platform/packages/apps/Camera2
git fetch base
git push https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git $AOSPTAG
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git remote add base https://android.googlesource.com/platform/system/core
git fetch base
git push https://github.com/OMAP4-AOSP/android_system_core.git $AOSPTAG
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"