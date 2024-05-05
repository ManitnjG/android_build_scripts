crave run --no-patch -- "rm -rf kernel/asus/sdm660 
git clone https://github.com/Tiktodz/android_kernel_asus_sdm660 -b tom/udc kernel/asus/sdm660 
rm -rf vendor/voltage 
git clone https://github.com/ManitnjG/vendor_voltage -b 14 vendor/voltage
. build/envsetup.sh
brunch X01BD"
