#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-6.0

NEWTAG="tags/android-6.0.1_r66"

# Let's apply all commits!
echo "----------------------------------------"
echo ""
echo "       UPDATE OMAP4-AOSP PROJECT        "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git remote add base https://android.googlesource.com/platform/build
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_build.git android-6.0.1_r66-omap4
git cherry-pick 4f20d76^..bb01371
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git remote add base https://android.googlesource.com/platform/frameworks/av
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_av.git android-6.0.1_r66-omap4
git cherry-pick 6ffb973^..3a7aef9
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/base
git remote add base https://android.googlesource.com/platform/frameworks/base
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_base.git android-6.0.1_r66-omap4
git cherry-pick b8f2576^..4dadb79
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git remote add base https://android.googlesource.com/platform/frameworks/native
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_frameworks_native.git android-6.0.1_r66-omap4
git cherry-pick a01d47d^..3110d84
echo ""
echo "----------------------------------------"
cd $SAUCE/hardware/ril
git remote add base https://android.googlesource.com/platform/hardware/ril
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_hardware_ril.git android-6.0.1_r66-omap4
git cherry-pick ba74987
echo ""
echo "----------------------------------------"
cd $SAUCE/packages/apps/Camera2
git remote add base https://android.googlesource.com/platform/packages/apps/Camera2
git fetch base
git checkout $NEWTAG
git fetch https://github.com/OMAP4-AOSP/android_packages_apps_Camera2.git android-6.0.1_r66-omap4
git cherry-pick 10ce2b0
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"