crave run --no-patch -- "rm -rf .repo/local_manifests out
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b op .repo/local_manifests
/opt/crave/resync.sh && \
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch lineage_X01BD-ap1a-userdebug
rise up"
