crave run --no-patch -- "rm -rf vendor/lineage
git clone https://github.com/ManitnjG/android_vendor_lineage -b 14.0 vendor/lineage
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export ALLOW_MISSING_DEPENDENCIES=true 
  . build/envsetup.sh
  brunch X01BD"
