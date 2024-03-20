#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- " rm -rf device/asus/sdm660-common
rm -rf device/asus/X01BD
rm -rf vendor/asus
rm -rf kernel/asus/sdm660
git clone https://github.com/ManitnjG/android_device_asus_X01BD-4.19 -b lineage-21.0-RetrofitDynParts device/asus/X01BD
git clone https://github.com/SonicBSV/android_device_asus_sdm660-common-4.19  -b lineage-21.0-RetrofitDynParts device/asus/sdm660-common
git clone https://github.com/SonicBSV/proprietary_vendor_asus-4.19 -b lineage-21.0 vendor/asus
git clone https://github.com/SonicBSV/android_kernel_asus_sdm660-4.19 -b master-RetrofitDynParts kernel/asus/sdm660

source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES=true ;\

lunch lineage_X01BD-userdebug ;\
m clean
m bacon ;\
echo "Date and time:" ; \

crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
