#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests Android.bp bootable compatibility developers external kernel Makefile packages prebuilts test vendor art bootstrap.bash cts development frameworks libcore manifest pdk sdk toolchain bionic build dalvik device hardware libnativehelper out platform_testing system tools &&

git clone https://github.com/ManitnjG/local_manifest-1 -b nu .repo/local_manifests &&

repo init --depth=1 -u https://github.com/Corvus-AOSP/android_manifest.git -b 11 && 
/opt/crave/resync.sh  && 
source build/envsetup.sh && lunch corvus_X01BD-userdebug && make corvus "
