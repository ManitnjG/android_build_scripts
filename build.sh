set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "
  # Sync the repositories
  /opt/crave/resync.sh  && \
  croot
  # Set up build environment
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  lunch evolution_X01BD-ap1a-userdebug && \
  make installclean && \
  m evolution"
