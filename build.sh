#!/bin/bash
set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run  --no-patch " rm -rf .repo/local_manifests && 
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr &&
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b cip .repo/local_manifests && 
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh &&
source build/envsetup.sh &&
lunch cipher_X01BD-ap1a-userdebug &&
mka bacon "
