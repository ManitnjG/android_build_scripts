#!/bin/bash
set -e
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr 
crave set --projectID 79 
crave run  --no-patch " rm -rf .repo/local_manifests && 
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b cip .repo/local_manifests && 
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh &&
source build/envsetup.sh &&
lunch cipher_X01BD-ap1a-userdebug &&
mka bacon "
