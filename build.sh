rm -rf .repo/local_manifests && rm -rf prebuilts && repo init -u https://github.com/alphadroid-project/manifest -b alpha-14 --git-lfs && git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b los .repo/local_manifests && repo sync -c -j 4 --force-sync && source build/envsetup.sh && export USE_CCACHE=1  && lunch lineage_X01BD-userdebug && make bacon
