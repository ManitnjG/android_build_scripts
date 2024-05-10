crave run --no-patch -- " rm -rf .repo/local_manifests && \
repo init -u https://github.com/SuperiorOS/manifest.git -b eleven && \
git clone https://github.com/ManitnjG/local_manifest-1 -b sup .repo/local_manifests && \
/opt/crave/resync.sh && \
source build/envsetup.sh && \
lunch superior_X01BD-userdebug && \
mka bacon "
