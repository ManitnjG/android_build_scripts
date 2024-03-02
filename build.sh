#!/bin/bash

set -e

repo init -u https://github.com/PixelExperience/manifest -b fourteen

crave set --projectID 72


crave run --no-patch -- "rm -rf .repo/local_manifests && \

git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && \


repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 

source build/envsetup.sh && \

lunch aosp_X01BD-userdebug ;\

croot ;\
mka bacon -j16 ; \
echo "Date and time:" ; \

cat out/build_date.txt; \

sha256sum out/target/product/*/*.zip"


# Pull generated zip files
 crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img

# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
