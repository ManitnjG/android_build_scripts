#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests && git clone https://github.com/ManitnjG/local_manifest-1 -b mat .repo/local_manifests &&

repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs && \
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j16 && ls &&
 rm -rf vendor/lineage &&
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage &&
source build/envsetup.sh && lunch lineage_X01BD-userdebug && export TZ=Asia/Kolkata && m bacon "
