repo init --depth 1 -u https://github.com/LineageOS/android.git -b lineage-21.0 --repo-url=https://github.com/android/tools_repo.git --repo-branch=stable --git-lfs
crave set --projectID 72
crave run --no-patch -- "rm -rf .repo/local_manifests out prebuilts/clang/host/linux-x86 && 
/opt/crave/resync.sh && 
rm -rf vendor/evolution &&
git clone https://github.com/ManitnjG/vendor_evolution -b u vendor/evolution &&
git clone https://github.com/ManitnjG/android_device_asus_X01BD-4.19 -b evo device/asus/X01BD
git clone https://github.com/SonicBSV/android_device_asus_sdm660-common-4.19 -b lineage-21.0 device/asus/sdm660-common
git clone https://github.com/SonicBSV/proprietary_vendor_asus-4.19 -b lineage-21.0 vendor/asus
git clone https://github.com/SonicBSV/android_kernel_asus_sdm660-4.19 -b master kernel/asus/sdm660
 
source build/envsetup.sh && croot && export ALLOW_MISSING_DEPENDENCIES=true && lunch evolution_X01BD-ap1a-userdebug && m evolution "

#crave pull
