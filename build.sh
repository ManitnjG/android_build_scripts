set -e
crave set --projectID 79
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr 
crave run --no-patch -- "rm -rf .repo/local_manifests  out && 
repo init --depth=1 -u https://github.com/ProjectSakura/android.git -b 14 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && 

rm -rf vendor/lineage
git clone https://github.com/ManitnjG/vendor_sakura -b 14 vendor/sakura
source build/envsetup.sh &&
lunch lineage_X01BD-ap1a-userdebug &&
mka bacon"
