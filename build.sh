set -e
crave set --projectID 79
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr 
crave run --no-patch -- "rm -rf .repo/local_manifests  out && 
repo init --depth=1 -u https://github.com/Evolution-X/manifest -b u
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && 
/opt/crave/resync.sh &&
rm -rf vendor/evolutions
git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution
. build/envsetup.sh &&
lunch evolution_X01BD-userdebug &&
m evolution"
