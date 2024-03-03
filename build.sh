#!/bin/bash

set -e


repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "rm -rf .repo .repo/local_manifests android art bionic bootable build cts dalvik developers development device external frameworks hardware kernel libcore libnativehelper lineage-sdk packages pdk platform platform_testing prebuilts sdk system test toolchain tools vendor && \

export TZ='Asia/Jakarta' && \

repo init -u https://github.com/Evolution-X/manifest -b udc

git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b evo .repo/local_manifests && \

repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 

export ALLOW_MISSING_DEPENDENCIES=true

source build/envsetup.sh && \
lunch evolution_X01BD-userdebug ;\

mka bacon ; \
echo "Date and time:" ; \

cat out/build_date.txt; \

sha256sum out/target/product/*/*.zip

crave pull out/target/product/*/*.zip "
# Pull generated zip files
 

# Pull generated img files
crave pull out/target/product/*/*.img

# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
