

rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage

source build/envsetup.sh ;\

export ALLOW_MISSING_DEPENDENCIES=true ;\

lunch lineage_X01BD-userdebug ;\
rm -rf out/target/product/X01BD/
m bacon ;\
