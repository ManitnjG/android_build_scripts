#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests android build device libnativehelper sdk WORKSPACE  Android.bp BUILD external lineage-sdk system art cts frameworks packages test bionic dalvik hardware pdk toolchain  bootable developers kernel platform_testing tools bootstrap.bash development libcore prebuilts vendor  &&    
git clone https://github.com/ManitnjG/local_manifest-1 -b nu .repo/local_manifests &&

repo init -u https://github.com/NusantaraProject-ROM/android_manifest -b 11 && \
 
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j16 && ls &&

source build/envsetup.sh && lunch nad_X01BD-userdebug && mka nad "
