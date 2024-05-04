crave run --no-patch -- " rm -rf vendor/superior
git clone https://github.com/ManitnjG/android_vendor_superior -b fourteen vendor/superior
. build/envsetup.sh
  lunch superior_X01BD-ap1a-userdebug
  mka bacon "
