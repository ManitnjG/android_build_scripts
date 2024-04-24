#!/bin/bash
set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run  --no-patch " rm -rf .repo/local_manifests prebuilts/clang/host/linux-x86 && 
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b ris .repo/local_manifests && 
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs && 
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh &&
rm -rf vendor/lineage &&
git clone https://github.com/ManitnjG/android_vendor_lineag -b fourteen vendor/lineage &&
  source build/envsetup.sh &&
  croot
  lunch riseup X01BD userdebug &&
  rise b"
