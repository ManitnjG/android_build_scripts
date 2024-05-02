crave set --projectID 79
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr 
crave run --no-patch -- "rm -rf .repo/local_manifests  out && 
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests &&
repo init -u https://github.com/SuperiorOS/manifest.git -b fourteen --git-lfs &&
/opt/crave/resync.sh &&

