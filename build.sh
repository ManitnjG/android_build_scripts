#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "rm -rf .repo/local_manifests/  &&
repo init -u https://github.com/Evolution-X/manifest -b uqpr2 &&
git clone https://github.com/ManitnjG/local_manifest-1 -b evo .repo/local_manifests &&
/opt/crave/resync.sh && 
 rm -rf vendor/lineage &&
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage &&

rm -rf out/host/linux-x86 &&
source build/envsetup.sh &&
export ALLOW_MISSING_DEPENDENCIES=true &&
lunch evolution_X01BD-userdebug &&

m evolution  &&
echo "Date and time:" &&

crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
