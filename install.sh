#! /bin/bash

echo "Codelite installation...."
sudo yum install wget cmake
sudo yum install wxGTK3.x86_64 libsqlite3x-devel.x86_64 libsqlite3x.x86_64 libsq3-devel.x86_64 wxGTK3-gl.x86_64 wxGTK3-i18n.noarch wxGTK3-media.x86_64 wxGTK3-webview.x86_64
sudo yum install https://download-ib01.fedoraproject.org/pub/epel/8/Everything/x86_64/Packages/w/wxGTK3-devel-3.0.4-11.el8.x86_64.rpm
sudo dnf install libssh-devel
wget https://codeload.github.com/eranif/codelite/tar.gz/15.0
tar -xvf codelite-15.0.tar.gz
cd codelite-15.0/
mkdir build-release
cd build-release
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . -j $(nproc)
sudo cmake --build . --target install
echo "Codelite installation complated"
