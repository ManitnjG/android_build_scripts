crave run --no-patch -- "rm -rf .repo/local_manifests
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs && \
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests && \
/opt/crave/resync.sh && \
rm -rf vendor/lineage && \
rm -rf vendor/rising
git clone https://github.com/RisingTechOSS/android_vendor_rising -b fourteen vendor/rising
git clone https://github.com/ManitnjG/android_vendor_lineag -b fourteen vendor/lineage && \
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
export TARGET_CORE_GMS=true && \
source build/envsetup.sh && \
lunch lineage_X01BD-ap1a-userdebug
rise b"
