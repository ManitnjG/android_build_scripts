set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "
  # Sync the repositories
  rm -rf vendor/evolution
  git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution && \
  # Set up build environment
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  croot
  lunch evolution_X01BD-ap1a-userdebug && \
  make installclean && \
  m evolution"
