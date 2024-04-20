#!/bin/bash
set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --clean --no-patch -- "
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs

rm -rf vendor/lineage
  https://github.com/ManitnjG/vendor_lineage -b u vendor/lineage && \
  source build/envsetup.sh && \
  croot
  lunch rising_X01BD-userdebug && \
  make installclean && \
  mka bacon"
