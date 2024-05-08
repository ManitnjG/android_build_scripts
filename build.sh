crave run --no-patch -- " rm -rf .repo/local_manifests
repo init -u https://github.com/Evolution-XYZ/manifest -b udc --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b evo .repo/local_manifests 
/opt/crave/resync.sh &&
rm -rf vendor/evolution
git clone https://github.com/ManitnjG/vendor_evolution -b udc vendor/evolution
rm -rf packages/apps/Trebuchet packages/overlays/Lineage/icons &&
source build/envsetup.sh
lunch lineage_X01BD-userdebug
lunch lineage_X01BD-ap1a-userdebug
m evolution "
