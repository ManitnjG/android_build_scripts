#!/bin/bash

set -e

# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 -b los .repo/local_manifests ;\

if [ ! 0 == 0 ]
then curl -o .repo/local_manifests https://github.com/ManitnjG/local_manifest-1 
fi &&

# Sync the repositories
repo sync -c -j4 --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync &&

# Set up build environment 
export BUILD_USERNAME=ManitnjG && 
export BUILD_HOSTNAME=crave &&
export TZ=Asia/Jakarta &&
source build/envsetup.sh && lunch lineage_X01BD-userdebug && make clean && mka bacon -j4
