#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- " rm -rf device/asus/sdm660-common

source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES=true ;\

lunch lineage_X01BD-userdebug ;\
m bacon ;\
echo "Date and time:" ; \

crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
