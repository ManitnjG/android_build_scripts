repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --repo-url=https://github.com/android/tools_repo.git --repo-branch=stable --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests out prebuilts/clang/host/linux-x86 && 
repo init -u https://github.com/Evolution-X/manifest -b u-j --depth 1 && 
git clone https://github.com/ManitnjG/local_manifest-1.git --depth 1 -b los .repo/local_manifests && 
/opt/crave/resync.sh && 
rm -rf vendor/evolution &&
git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution &&

source build/envsetup.sh && croot && export ALLOW_MISSING_DEPENDENCIES=true && lunch evolution_X01BD-ap1a-userdebug && m evolution "

#crave pull
