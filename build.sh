crave run --no-patch -- " rm -rf .repo/local_manifests && \
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs && \
git clone https://github.com/ManitnjG/local_manifest-1 -b los .repo/local_manifests && \
/opt/crave/resync.sh && \
rm -rf vendor/lineage && \
git clone https://github.com/ManitnjG/android_vendor_lineag -b fourteen vendor/lineage && \
export PRODUCT_NO_CAMERA=true && export TARGET_CORE_GMS=true && \
source build/envsetup.sh && \
lunch lineage_X01BD-ap1a-userdebug && \
rise b "
