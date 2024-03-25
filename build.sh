#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "rm -rf .repo/local_manifests/ prebuilts/clang/host/linux-x86  && \

repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs && \

git clone https://github.com/ManitnjG/local_manifest-1 -b ris .repo/local_manifests && \

if [ ! 0 == 0 ]
 then   curl -o .repo/local_manifests https://github.com/Tiktodz/local_manifest
   echo Git clone failed, downloading through curl instead...
 fi 

/opt/crave/resync.sh && \


 rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage
purge ;\
source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES=true ;\

lunch rising_X01BD-userdebug ;\
rm -rf out/target/product/X01BD/
m ;\
echo "Date and time:" ; \

crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
