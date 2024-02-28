 rm -rf .repo/local_manifests && repo init -u https://github.com/alphadroid-project/manifest -b alpha-14 --git-lfs&&https://github.com/ManitnjG/local_manifest-1 -b los -c .repo/local_manifests && repo sync --force-sync -c -j 4 && source build/envsetup.sh && lunch lineage_X01BD-userdebug && mka bacon


# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img

# Upload zips to Telegram
telegram-upload --to sdreleases oxygen/*.zip oxygen/recovery.img

#Upload to Github Releases
#cd oxygen/
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
