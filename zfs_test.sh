# Test script to see what's going on

# Create zpool
sudo zpool create pool raidz /dev/loop21 /dev/loop22 /dev/loop23
sudo zfs set mountpoint=/mnt/zfs pool
sudo chown -R cc:cc /mnt/zfs

# Write a large file and zero out disk
time sudo dd if=/dev/urandom of=/mnt/zfs/random.bin bs=1G count=1 oflag=direct
time sudo dd if=/dev/zero of=/dev/loop21 bs=1G count=5 oflag=direct

# limit bandwidth
sudo ./bw_limit.sh

# replace and time result
sudo zpool replace pool /dev/loop21 /dev/loop24
sudo zpool status

# sudo zpool destroy pool