#!/bin/bash
#dnf in -y epel-release
dnf makecache -y
dnf up -y
dnf in -y cmake gcc-c++ qt5-qtbase-devel qt5-qtwebsockets-devel qt5-qtbase-private-devel glib2-devel nlohmann-json-devel ostree-devel yaml-cpp-devel systemd-devel gtest-devel libseccomp-devel elfutils-libelf-devel glibc-static libstdc++-static docopt-cpp-devel
ln -s /usr/lib64/libdocopt.so /usr/lib64/libdocopt.a
git clone https://github.com/linuxdeepin/linglong
#mv 1.5.7 linglong
cd linglong
cmake --workflow --preset release
cmake --install build-release
#cp ../../org.deepin.linglong.PacmageManager.service /etc/systemd/system
#systemctl enable --now org.deepin.linglong.PackageManager.service
