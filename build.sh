#!/bin/bash

set -e

# Initialize repo with specified manifest
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs --depth=1

# Run inside foss.crave.io devspace, in the project folder
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \
# Initialize repo with specified manifest
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs --depth=1 ;\

# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests ;\


# Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 


# Set up build environment
source build/envsetup.sh && \

# Lunch configuration
opt_patch ;\
riseup X01BD userdebug ;\

croot ;\
ascend ; \
# echo "Date and time:" ; \

# Print out/build_date.txt
# cat out/build_date.txt; \

# Print SHA256
# sha256sum out/target/product/*/*.zip"

# Clean up
# rm -rf tissot/*



# Pull generated zip files
# crave pull out/target/product/*/*.zip

# Pull generated img files
# crave pull out/target/product/*/*.img

# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
