#!/bin/bash

set -e

repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72


crave run --no-patch -- "rm -rf .repo/local_manifests && \

git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && \


repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 

source build/envsetup.sh && \

lunch lineage_X01BD-userdebug ;\

croot ;\
mka bacon -j16 ; \
echo "Date and time:" ; \

cat out/build_date.txt; \

sha256sum out/target/product/*/*.zip"

cd ~/work/out/target/product/X01BD
wget https://github.com/Sushrut1101/GoFile-Upload/raw/master/upload.sh
chmod +x upload.sh
ls
./upload.sh e*.zip
./upload.sh boot.img



# Pull generated zip files
# crave pull out/target/product/*/*.zip 

# Pull generated img files
# crave pull out/target/product/*/*.img

# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
