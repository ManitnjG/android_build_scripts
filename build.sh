#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 

# Initialize repo with specified manifest
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \

# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && \

# Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 


# Set up build environment
source build/envsetup.sh && \

# Lunch configuration
lunch lineage_X01BD-userdebug && \

# Build the ROM
rm -rf out/target/product/X01BD/ ; \
mka bacon && \
echo "Date and time:" && \

# Print out/build_date.txt
cat out/build_date.txt; echo \

# Print SHA256
sha256sum out/target/product/*/*.zip"

# Clean up
rm -rf oxygen/



# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img

# Upload zips to Telegram
telegram-upload --to sdreleases oxygen/*.zip oxygen/recovery.img

#Upload to Github Releases
#cd oxygen/
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
