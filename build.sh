#!/bin/bash

set -e

# Initialize repo with specified manifest
 repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \
# Initialize repo with specified manifest
repo init -u https://github.com/Evolution-X/manifest -b udc ;\

# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b evo .repo/local_manifests ;\


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

# Clean up
rm -rf X01BD/*



# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img

# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
