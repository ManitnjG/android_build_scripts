#!/bin/bash

set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "rm -rf .repo/local_manifests ;\

repo init -u https://github.com/SuperiorOS/manifest.git -b fourteen --git-lfs ;\

git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b sup .repo/local_manifests ;\

repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags ;\


source build/envsetup.sh ;\
export TARGET_USES_PICO_GAPPS=true ;\

lunch superior_X01BD-userdebug ;\

croot ;\
mka bacon ; \
echo "Date and time:" ; \

# Print out/build_date.txt
cat out/build_date.txt; \

crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
