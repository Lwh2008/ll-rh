#!/bin/bash
#dnf in -y epel-release
dnf makecache -y
dnf up -y
dnf in -y cmake gcc-c++ qt5-qtbase-devel qt5-qtwebsockets-devel qt5-qtbase-private-devel glib2-devel nlohmann-json-devel ostree-devel yaml-cpp-devel systemd-devel gtest-devel libseccomp-devel elfutils-libelf-devel glibc-static libstdc++-static docopt-cpp-devel
ln -s /usr/lib64/libdocopt.so /usr/lib64/libdocopt.a
tar xzf linglong.tgz
cd linglong
#cat ../cmake.add >> CMakeLists.txt
cd build
#dnf se libqt5
cmake ..
make -j$(nproc)
make install
#cp ../../org.deepin.linglong.PacmageManager.service /etc/systemd/system
#systemctl enable --now org.deepin.linglong.PackageManager.service
