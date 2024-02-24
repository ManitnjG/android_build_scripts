# Remove local_manifests directory
rm -rf .repo/local_manifests
rm -rf build
# Clone local_manifests repository
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests
# Clone crdroid 14
repo init -u https://github.com/alphadroid-project/manifest -b alpha-14 --git-lfs

# repo sync
repo sync -c -j14 --force-sync --no-clone-bundle --no-tags --prune

# Set up build environment
source build/envsetup.sh
# Lunch configuration
lunch lineage_X01BD-userdebug
# Build confriguration
make bacon -j14
