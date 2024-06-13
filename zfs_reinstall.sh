#!/bin/bash

size=$1

set -e

# A simple shell script that uninstall zfs 
sudo service zed stop
# Check if the ZFS module is loaded
if lsmod | grep -q "^zfs"; then
    echo "ZFS module is loaded."
    sudo zpool destroy -f pool
    sudo modprobe -r zfs
    # Perform actions when the ZFS module is loaded
else
    echo "ZFS module is not loaded."
    # Perform actions when the ZFS module is not loaded
fi
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

sudo rm -rf /media/ramdisk*

for i in {1..4}; do
    sudo mkdir -p /media/ramdisk$i
    # sudo mount -t tmpfs -o size=${size} tmpfs /media/ramdisk$i/
    sudo truncate -s ${size} /media/ramdisk$i/disk.img
done

sudo zpool create pool raidz /media/ramdisk1/disk.img /media/ramdisk2/disk.img /media/ramdisk3/disk.img

printf "=======\nAll commands ran successfully\n=======" 