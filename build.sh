#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "rm -rf .repo/local_manifests ;\ 

repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs ;\

git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b mat .repo/local_manifests ;\

repo sync -c -j16 --force-sync --no-clone-bundle --no-tags ;\

source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES=true ;\

export BOARD_BOOTIMAGE_PARTITION_SIZE=67108864   ;\  
export BOARD_CACHEIMAGE_PARTITION_SIZE=367001600  ;\ 
export BOARD_RECOVERYIMAGE_PARTITION_SIZE=67108864 ;\
export BOARD_SYSTEMIMAGE_PARTITION_SIZE=5368709120  ;\
export BOARD_USERDATAIMAGE_PARTITION_SIZE=16106127360  ;\
export BOARD_VENDORIMAGE_PARTITION_SIZE=859384339  ;\

lunch lineage_X01BD-userdebug ;\

m bacon -j16 ;\
echo "Date and time:" ; \


crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
