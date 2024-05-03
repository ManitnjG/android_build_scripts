rm -rf .repo/local_manifests  out && 
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests 
repo init -u https://github.com/VoltageOS/manifest.git -b 14 --git-lfs
/opt/crave/resync.sh 
. build/envsetup.sh
brunch X01BD
