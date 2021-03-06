#!/bin/bash
# Your build source code directory path. In the example below the build source code directory path is in the "home" folder. If your source code directory is on an external HDD it should look like: //media/your PC username/the name of your storage device/path/to/your/source/code/folder
SAUCE=~/android/aosp-7.0

echo "----------------------------------------"
echo ""
echo "        C L E A N  B R A N C H          "
echo "          OMAP4-AOSP PROJECT            "
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
cd $SAUCE
repo sync -c -d -f -j16 --force-sync
echo ""
echo "----------------------------------------"
cd $SAUCE/bionic
git branch -D aosp-7.0
echo ""
echo "----------------------------------------"
cd $SAUCE/bootable/recovery
git branch -D aosp-7.0
echo ""
echo "----------------------------------------"
cd $SAUCE/build
git branch -D aosp-7.0
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/av
git branch -D aosp-7.0
echo ""
echo "----------------------------------------"
cd $SAUCE/frameworks/native
git branch -D aosp-7.0
echo ""
echo "----------------------------------------"
cd $SAUCE/system/core
git branch -D aosp-7.0
echo ""
echo "----------------------------------------"
echo ""
echo "----------------------------------------"
echo "----------------------------------------"
echo ""
echo "Done!"
cd $SAUCE
echo "----------------------------------------"
echo "----------------------------------------"