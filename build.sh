crave run --no-patch -- "rm -rf .repo/local_manifests &&
repo init -u https://github.com/VoltageOS/manifest.git -b 14 --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests 
/opt/crave/resync.sh &&
rm -rf vendor/voltage 
git clone https://github.com/ManitnjG/vendor_voltage -b 14 vendor/voltage
. build/envsetup.sh
brunch X01BD"
