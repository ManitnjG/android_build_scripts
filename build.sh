set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf  .repo/local_manifests out
# Initialize local repository
repo init -u https://github.com/Evolution-X/manifest -b u && 
git clone https://github.com/ManitnjG/local_manifest-1 -b los .repo/local_manifests ; \
 /opt/crave/resync.sh  && 
 rm -rf vendor/evolution && 
 git clone https://github.com/Evolution-X/vendor_evolution -b u vendor/evolution && 
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  croot
  lunch evolution_X01BD-userdebug && \
  make installclean && \
  m evolution"
