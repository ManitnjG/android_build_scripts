#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests 
git clone https://github.com/ManitnjG/local_manifest-1 -b nu .repo/local_manifests &&

repo init -u https://github.com/Havoc-OS-Revived/android_manifest.git -b eleven --git-lfs && \
 
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j16 &&
export WITH_GAPPS=true
source build/envsetup.sh && export WITH_GAPPS=true && lunch havoc_X01BD-userdebug && m bacon -j16 "
