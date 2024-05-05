crave run --no-patch -- "rm -rf .repo
repo init -u https://github.com/SuperiorOS/manifest.git -b fourteen --git-lfs
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests 
/opt/crave/resync.sh &&
rm -rf vendor/superior
git clone https://github.com/ManitnjG/android_vendor_superior -b fourteen vendor/superior
  . build/envsetup.sh
  lunch superior_X01BD-ap1a-userdebug
  mka bacon"
