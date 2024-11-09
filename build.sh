crave run --no-patch -- "rm -rf .repo/local_manifests out

git clone https://github.com/ManitnjG/local_manifest-1 -b op .repo/local_manifests
/opt/crave/resync.sh && \
git clone https://github.com/opudon/hardware_dolby -b 14 hardware/dolby
export BUILD_USERNAME=ManitnjG ; \
export BUILD_HOSTNAME=crave ; \
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch lineage_udon-ap1a-userdebug
 make installclean
mka bacon"
