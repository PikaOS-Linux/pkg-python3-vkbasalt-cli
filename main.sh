# Clone Upstream
git clone https://gitlab.com/TheEvilSkeleton/vkbasalt-cli -b v3.1.1
cp -rvf ./debian ./vkbasalt-cli/
cd ./vkbasalt-cli

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
