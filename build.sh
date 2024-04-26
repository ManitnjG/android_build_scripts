git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && 
rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineag.git -b fourteen vendor/lineage
source build/envsetup.sh &&
lunch lineage_X01BD-ap1a-userdebug &&
rise b "
