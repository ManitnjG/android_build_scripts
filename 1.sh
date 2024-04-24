 rm -rf .repo/local_manifests prebuilts/clang/host/linux-x86 && \
git clone https://github.com/ManitnjG/local_manifest-1 --depth 1 -b ris .repo/local_manifests ;\ 
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
repo sync
