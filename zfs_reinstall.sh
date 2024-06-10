#!/bin/bash

set -e

# A simple shell script that uninstall zfs 
sudo service zed stop
sudo modprobe -r zfs
sudo make uninstall
sudo ldconfig
sudo depmod
sudo rm -rf /usr/local/etc/zfs
sudo rm -rf /usr/lib/python3/dist-packages/libzfs_core

make -s -j$(nproc)

sudo make install
sudo ldconfig
sudo depmod

sudo ./scripts/zfs.sh 
sudo systemctl enable zfs.target zfs-import.target \
    zfs-mount.service zfs-import-cache.service zfs-import-scan.service
sudo modprobe zfs

echo "All commands ran successfully" 