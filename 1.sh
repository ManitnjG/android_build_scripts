sudo apt install repo &&
repo init -u https://github.com/RisingTechOSS/android -b fourteen &&
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all) 
