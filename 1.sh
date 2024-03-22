#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf vendor/lineage

repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs

git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage

source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES=true ;\

lunch lineage_X01BD-userdebug ;\
rm -rf out/target/product/X01BD/
m bacon ;\ "
