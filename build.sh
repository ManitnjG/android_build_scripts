#!/bin/bash
set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "source build/envsetup.sh && \
  croot
  lunch evolution_X01BD-userdebug && \
  make installclean && \
  m evolution"
