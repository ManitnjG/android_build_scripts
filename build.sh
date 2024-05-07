crave run --no-patch -- " rm -rf .repo/local_manifests
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests 
/opt/crave/resync.sh &&
rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage
rm -rf packages/apps/Trebuchet packages/overlays/Lineage/icons

source build/envsetup.sh
brunch X01BD "
