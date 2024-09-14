#!/bin/bash
for i in {1..6}; do
    # Create tmpfs
    sudo mkdir -p /media/rdisk$i
    sudo mount -t tmpfs -o size=5G tmpfs /media/rdisk$i/
    sudo truncate -s 5G /media/rdisk$i/disk.img

    # Install GPT table to the img
    cfdisk /media/rdisk$i/disk.img

    # Setup loopback device
    loopback_num=$(($i+20))
    losetup -P /dev/loop$loopback_num /media/rdisk$i/disk.img

    # # Format FS and mount
    # mkfs.ext4 /dev/loop$loopback_num
    # sudo mkdir -p /rdisk/ram$i
    # sudo mount /dev/loop$loopback_num /rdisk/ram$i
done
