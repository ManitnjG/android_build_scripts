repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests out prebuilts/clang/host/linux-x86 && 
repo init -u https://github.com/Evolution-X/manifest -b u  && 
git clone https://github.com/ManitnjG/local_manifest-1.git --depth 1 -b los .repo/local_manifests && 
/opt/crave/resync.sh && 
 rm -rf vendor/evolution &&
git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution &&
source build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true && lunch evolution_X01BD-ap1a-userdebug && m evolution
echo "Date and time:" &&  "

#crave pull out/target/product/*/*.zip


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
