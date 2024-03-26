#!/bin/bash
set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests 
git clone https://github.com/ManitnjG/local_manifest-1 -b nu .repo/local_manifests &&

repo init -u https://github.com/NusantaraProject-ROM/android_manifest -b 11 && \
 
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j16 && ls &&
rm -rf out/target/product/
source build/envsetup.sh && lunch nad_X01BD-userdebug && mka nad -j16 &&
wget https://gist.githubusercontent.com/ManitnjG/f26dc82fd4ce41c41229567ae5f3d841/raw/55f173db002de0571075b770382b060147ec73cf/fix_duplicates.sh && chmod +x fix_duplicates.sh && ./fix_duplicates.sh"
