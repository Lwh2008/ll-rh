#!/bin/bash
sudo dnf makecache
sudo dnf up
sudo dnf in -y qt5-qtbase-devel qt5-qtwebsockets-devel qt5-qtbase-private-devel glib2-devel ostree-devel yaml-cpp-devel systemd-devel libseccomp-devel docopt-cpp-devel python3-docopt elfutils-libelf-devel git-lfs git
ln -s /usr/lib64/libdocopt.so /usr/lib64/libdocopt.a
tar xzvf linglong.tar.gz
cd linglong
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
sudo cp ../../org.deepin.linglong.PacmageManager.service /etc/systemd/system
sudo systemctl enable --now org.deepin.linglong.PackageManager.service
cat /etc/os-release
