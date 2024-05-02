crave set --projectID 72
repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
rm -rf .repo/local_manifests && 
git clone https://github.com/ManitnjG/local_manifest-1 -b 13 .repo/local_manifests 
repo init -u https://github.com/SuperiorOS/manifest.git -b fourteen --git-lfs 
/opt/crave/resync.sh 
