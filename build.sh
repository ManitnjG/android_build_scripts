#!/bin/bash

set -e

# Initialize repo with specified manifest
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
rm -rf .repo/local_manifests &&


# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests ;\

if [ ! 0 == 0 ]
then curl -o .repo/local_manifests https://github.com/ManitnjG/local_manifest-1 
fi &&

# Sync the repositories
repo sync -c -j4 --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync &&

# Set up build environment 
export BUILD_USERNAME=ManitnjG && 
export BUILD_HOSTNAME=crave &&
export TZ=Asia/Jakarta &&
source build/envsetup.sh && lunch rising_X01BD-userdebug && make clean && mka bacon -j4
