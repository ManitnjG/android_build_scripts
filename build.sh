crave run --no-patch -- "rm -rf .repo/local_manifests out
repo init -u https://github.com/Evolution-XYZ/manifest -b udc --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests
/opt/crave/resync.sh && \
rm -rf vendor/evolution
git clone https://github.com/ManitnjG/vendor_evolutionxyz -b udc vendor/evolution
git clone https://github.com/ManitnjG/vendor_evolutionxyz -b udc vendor/lineage
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true && \
export ALLOW_MISSING_DEPENDENCIES=true && \
source build/envsetup.sh && \
lunch lineage_X01BD-userdebug
m evolution"
