#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests/ out  && # Clone local_manifests repository
repo init -u https://github.com/Evolution-X/manifest -b u
 git clone https://github.com/ManitnjG/local_manifest-1 -b los .repo/local_manifests && 
if [ ! 0 == 0 ]
 then   curl -o .repo/local_manifests https://github.com/ManitnjG/local_manifest-1
   echo Git clone failed, downloading through curl instead...
 fi 
 rm -rf vendor/evolution
 git clone https://github.com/Evolution-X/vendor_evolution -b u vendor/evolution
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh && 
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true  &&
export ALLOW_MISSING_DEPENDENCIES=true  && source build/envsetup.sh && lunch evolution_X01BD-userdebug && m evolution"
