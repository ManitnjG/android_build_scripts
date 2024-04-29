set -e
crave set --projectID 79
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr 
crave run --no-patch -- "rm -rf .repo/local_manifests  out && 
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b mat .repo/local_manifests && 
/opt/crave/resync.sh &&
rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage
. build/envsetup.sh &&
brunch X01BD"
