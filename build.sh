#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

crave run --no-patch -- "rm -rf .repo/local_manifests android build device libnativehelper prebuilts vendor Android.bp BUILD external lineage sdk WORKSPACE art cts frameworks lineage-sdk system bionic dalvik hardware packages test bootable developers kernel pdk toolchain bootstrap.bash development libcore platform_testing tools && \
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs && \
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b ris .repo/local_manifests && \
source build/envsetup.sh ;\
export ALLOW_MISSING_DEPENDENCIES=true ;\
export RISING_PACKAGE_TYPE=VANILLA_AOSP ;\
opt_patch ;\
lunch rising_X01BD-userdebug ;\
m -j16 ;\
echo "Date and time:" ; \


crave pull out/target/product/*/*.zip "


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
