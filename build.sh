set -e
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests out prebuilts/clang/host/linux-x86 && 
# Initialize local repository
repo init -u https://github.com/Evolution-X/manifest -b u
 git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b evo .repo/local_manifests && 
if [ ! 0 == 0 ]
 then   curl -o .repo/local_manifests https://github.com/ManitnjG/local_manifest-1
 fi 
  # Sync the repositories
  /opt/crave/resync.sh  && \
  croot
  # Set up build environment
  export BUILD_USERNAME=ManitnjG ; \
  export BUILD_HOSTNAME=crave ; \
  source build/envsetup.sh && \
  lunch evolution_X01BD-userdebug && \
  make installclean && \
  mka evolution"
