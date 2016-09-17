#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-7.0

NEWTAG="tags/android-7.0.0_r4"

# Let's apply all commits!
echo "----------------------------------------"
echo ""
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/bionic
git remote add base https://android.googlesource.com/platform/bionic
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_bionic.git android-7.0.0_r1-omap4
git cherry-pick 448e8f4^..c759e60
echo ""
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
git remote add base https://android.googlesource.com/bootable/recovery
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_bootable_recovery.git android-7.0.0_r1-omap4
git cherry-pick 7233be6
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git remote add base https://android.googlesource.com/platform/build
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_build.git android-7.0.0_r1-omap4
git cherry-pick d6ae86f^..36cb877
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git remote add base https://android.googlesource.com/platform/frameworks/av
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_av.git android-7.0.0_r1-omap4
git cherry-pick 8d20a91^..95215fc
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git remote add base https://android.googlesource.com/platform/frameworks/native
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_native.git android-7.0.0_r1-omap4
git cherry-pick b157a28^..bdf3c44
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git remote add base https://android.googlesource.com/platform/system/core
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_system_core.git android-7.0.0_r1-omap4
git cherry-pick db64120^..3d9db67
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"