#!/bin/bash

set -e

crave run --clean --no-patch -- "rm -rf .repo/local_manifests && \

# Initialize repo with specified manifest
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs && \

git clone https://github.com/ManitnjG/local_manifest-1 -b op .repo/local_manifests
/opt/crave/resync.sh && \
export BUILD_USERNAME=ManitnjG ; \
export BUILD_HOSTNAME=crave ; \
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch lineage_udon-userdebug
 make installclean
mka bacon"
