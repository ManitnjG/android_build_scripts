set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf device/asus/X01BD device/asus/sdm660-common vendor/asus kernel/asus/sdm660 
 
  
  # Sync the repositories
  rm -rf vendor/evolution
  git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution && \
  # Set up build environment
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  croot
  lunch evolution_X01BD-userdebug && \
  make installclean && \
  m evolution"
