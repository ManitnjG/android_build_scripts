
crave run --no-patch -- "rm -rf out
source build/envsetup.sh && export ALLOW_MISSING_DEPENDENCIES=true && lunch evolution_X01BD-ap1a-userdebug && m evolution
echo "Date and time:" &&  "

#crave pull out/target/product/*/*.zip


# Upload zips to Telegram
# telegram-upload --to sdreleases tissot/*.zip

#Upload to Github Releases
#curl -sf https://raw.githubusercontent.com/Meghthedev/Releases/main/headless.sh | sh
