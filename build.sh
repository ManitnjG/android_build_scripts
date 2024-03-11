#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES := true ;\

lunch rising_X01BD-userdebug ;\
export RISING_PACKAGE_TYPE := "VANILLA_AOSP"

croot ;\
m -j16 ; \
echo "Date and time:" ; \

# Print out/build_date.txt
cat out/build_date.txt; \

crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
