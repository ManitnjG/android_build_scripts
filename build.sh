rm -rf .repo/local_manifests &&
repo init -u https://github.com/VoltageOS/manifest.git -b 14 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests 
if [ ! 0 == 0 ]
 then   curl -o .repo/local_manifests https://github.com/ManitnjG/local_manifest-1.git
 fi
/opt/crave/resync.sh
. build/envsetup.sh
brunch X01BD
