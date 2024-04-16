#!/bin/bash

set -e
crave set --projectID 72
# Initialize repo with specified manifest
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \
# Initialize repo with specified manifest
repo init -u https://github.com/Evolution-X/manifest -b udc ;\

# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests ;\


# Sync the repositories
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh && 
 rm -rf vendor/evolution 
 git clone https://github.com/Evolution-X/vendor_evolution -b u vendor/evolution && 

export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true  &&
export ALLOW_MISSING_DEPENDENCIES=true  && source build/envsetup.sh && lunch evolution_X01BD-userdebug && m evolution"
