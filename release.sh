cd SuperPipeClient
git pull
git push git@codeberg.org:Manuel09/SuperPipeClient.git
cd ../SuperPipeExtractor
git pull
git push git@codeberg.org:Manuel09/SuperPipeExtractor.git
cd ..
if [ -n "$1" ]; then
    vim fastlane/metadata/android/en-US/changelogs/$1.txt
else
    echo "No version number provided. Skipping changelog edit."
fi
git add .
git commit -a
git push
git push git@codeberg.org:Manuel09/SuperPipe.git
