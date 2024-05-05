crave run --no-patch -- "repo init -u https://github.com/VoltageOS/manifest.git -b 14 --git-lfs


rm -rf vendor/voltage 
git clone https://github.com/ManitnjG/vendor_voltage -b 14 vendor/voltage 
. build/envsetup.sh
brunch X01BD"
