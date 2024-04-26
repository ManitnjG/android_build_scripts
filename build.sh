#set -e
#crave set --projectID 79
#repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr 
#crave run  --no-patch " rm -rf .repo/local_manifests  out && 
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && 
/opt/crave/resync.sh && 
rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineag.git -b fourteen vendor/lineage
source build/envsetup.sh &&
lunch lineage_X01BD-ap1a-userdebug &&
rise b "
