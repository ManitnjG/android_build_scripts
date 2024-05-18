crave run --no-patch -- "rm -rf .repo/local_manifests
repo init -u https://github.com/ProjectInfinity-X/manifest -b QPR2 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests
/opt/crave/resync.sh && \
rm -rf vendor/infinity
git clone https://github.com/ManitnjG/vendor_infinity -b QPR2 vendor/infinity
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch infinity_X01BD-userdebug
mka bacon"
