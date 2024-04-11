#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests Android.bp bootable compatibility developers external kernel Makefile packages prebuilts test vendor art bootstrap.bash cts development frameworks libcore manifest pdk sdk toolchain bionic build dalvik device hardware libnativehelper out platform_testing system tools &&

git clone https://github.com/ManitnjG/local_manifest-1 -b los .repo/local_manifests &&
repo init -u https://github.com/Evolution-X/manifest -b u && 
/opt/crave/resync.sh  && 
source build/envsetup.sh && export WITH_GAPPS=false &&  lunch evolution_X01BD-userdebug && m evolution"
