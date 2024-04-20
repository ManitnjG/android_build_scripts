
set -e
crave set --projectID 72
repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave run --no-patch -- "rm -rf .repo/local_manifests && \
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b ris .repo/local_manifests ;\
 repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
chmod +x /opt/crave/resync.sh && /opt/crave/resync.sh &&
rm -rf vendor/lineage
  https://github.com/ManitnjG/vendor_lineage -b u vendor/lineage && \
  source build/envsetup.sh && \
  croot
  lunch rising_X01BD-userdebug && \
  make installclean && \
  m"
