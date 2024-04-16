#!/bin/bash
set -e
crave set --projectID 72
 repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf Android.bp bootable compatibility developers external kernel Makefile packages prebuilts test vendor art bootstrap.bash cts development frameworks libcore manifest pdk sdk toolchain bionic build dalvik device hardware libnativehelper out platform_testing system tools &&
crave run --no-patch -- "repo init -u https://github.com/Evolution-X/manifest -b u && 
git clone https://github.com/ManitnjG/local_manifest-1 -b los .repo/local_manifests ; \
 git clone https://github.com/Evolution-X/vendor_evolution -b u vendor/evolution && 
 /opt/crave/resync.sh  &&  
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  croot
  lunch evolution_X01BD-userdebug && \
  make installclean && \
  m evolution"
