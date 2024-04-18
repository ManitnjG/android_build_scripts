
set -e
crave set --projectID 72
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave run --no-patch -- "rm -rf .repo/local_manifests && \
repo init -u https://github.com/Evolution-X/manifest -b u ;\
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests ;\
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh && 
 rm -rf vendor/evolution 
 git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution && 
 source build/envsetup.sh  &&
export TARGET_USES_MINI_GAPPS=true
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true  &&
export ALLOW_MISSING_DEPENDENCIES=true  && lunch evolution_X01BD-userdebug && m evolution"
