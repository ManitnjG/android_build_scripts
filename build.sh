#!/bin/bash

set -e
#Credit to Meghthedev for the initial script 

# Create and Enter Lineage folder
mkdir Lineage;
cd Lineage;

# Initialize repo with specified manifest
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs

# Run inside foss.crave.io devspace
# Remove existing local_manifests
crave run --no-patch -- "rm -rf .repo/local_manifests && \

# Clone local_manifests repository
git clone https://github.com/sounddrill31/local_manifests --depth 1 -b lineage-oxygen .repo/local_manifests && \

 # Sync the repositories
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \ 

# Apply microG patch to Settings app
wget -O packages/apps/Settings/microG.patch https://github.com/Divested-Mobile/DivestOS-Build/raw/master/Patches/LineageOS-20.0/android_packages_apps_Settings/0016-microG_Toggle.patch && \
cd packages/apps/Settings  && \
git am *.patch && \
cd ../../.. && \

# Apply microG patch to frameworks/base
wget -O frameworks/base/microG.patch https://github.com/Divested-Mobile/DivestOS-Build/raw/master/Patches/LineageOS-20.0/android_frameworks_base/0036-Unprivileged_microG_Handling.patch && \
cd frameworks/base && \
git am *.patch && \
cd ../.. && \

# Set up build environment
source build/envsetup.sh && \

# Lunch configuration
lunch lineage_oxygen-userdebug && \

# Build the ROM
mka bacon"

# Clean up
rm -rf oxygen 



# Pull generated zip files
crave pull out/target/product/*/*.zip

# Pull generated img files
crave pull out/target/product/*/*.img 

# Upload zips to Telegram
telegram-upload --to sdreleases oxygen/*.zip
