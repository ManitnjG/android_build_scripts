#!/bin/bash
cd /home/runner/work/Probuilder/Probuilder

# Set up build environment 
export BUILD_USERNAME=ManitnjG && 
export BUILD_HOSTNAME=crave &&
export TZ=Asia/Jakarta &&
source build/envsetup.sh && lunch lineage_X01BD-userdebug && make clean && mka bacon -j10

# Pull generated zip files
crave pull out/target/product/*/*.zip 

# Pull generated img files
crave pull out/target/product/*/*.img


