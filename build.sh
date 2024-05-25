crave run --no-patch -- "rm -rf .repo/local_manifests out
  repo init -u https://github.com/NusantaraProject-ROM/android_manifest -b 11
git clone https://github.com/ManitnjG/local_manifest-1 -b nad .repo/local_manifests
/opt/crave/resync.sh && \
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch nad_X01BD-userdebug
mka nad"
