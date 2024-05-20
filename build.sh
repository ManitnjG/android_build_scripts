crave run --no-patch -- "rm -rf .repo/local_manifests
repo init -u https://github.com/alphadroid-project/manifest -b alpha-14 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests
/opt/crave/resync.sh && \
rm -rf vendor/lineage
git clone https://github.com/ManitnjG/vendor_lineage -b alpha-14 vendor/lineage
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch lineage_X01BD-ap1a-userdebug
mka bacon"
