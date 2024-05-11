crave run --no-patch -- " rm -rf .repo/local_manifests && \
repo init -u https://github.com/VoltageOS/manifest.git -b 14 --git-lfs && \
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests && \
/opt/crave/resync.sh && \
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export ALLOW_MISSING_DEPENDENCIES=true 
source build/envsetup.sh && \
brunch X01BD "
