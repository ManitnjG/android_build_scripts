#!/bin/bash
set -e
crave set --projectID 72

crave run --no-patch -- "rm -rf .repo/local_manifests  &&
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs &&

git clone https://github.com/ManitnjG/local_manifest-1.git --depth 1 -b los .repo/local_manifests && 

/opt/crave/resync.sh && 

 rm -rf vendor/lineage &&
git clone https://github.com/ManitnjG/android_vendor_lineage1 -b lineage-21.0 vendor/lineage &&
source build/envsetup.sh &&
export ALLOW_MISSING_DEPENDENCIES=true &&
lunch lineage_X01BD-ap1a-userdebug &&
mka bacon  &&
echo "Date and time:" &&  "

#crave pull out/target/product/*/*.zip


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
