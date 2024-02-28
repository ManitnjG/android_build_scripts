#!/bin/bash

set -e

# Initialize repo with specified manifest
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs

crave set --projectID 72

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \
# Initialize repo with specified manifest
repo init -u https://github.com/Evolution-X/manifest -b udc ;\

# Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 


# Set up build environment
source build/envsetup.sh && \

# Lunch configuration
lunch evolution_X01BD-userdebug ;\

croot ;\
m evolution ; \
echo "Date and time:" ; \

# Print out/build_date.txt
cat out/build_date.txt; \

# Print SHA256
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
