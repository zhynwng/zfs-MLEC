# Test script to see what's going on

# Create zpool
sudo zpool create pool raidz /dev/loop24 /dev/loop22 /dev/loop23 /dev/loop25
sudo zfs set mountpoint=/mnt/zfs pool
sudo chown -R cc:cc /mnt/zfs

# Write a large file and zero out disk
time sudo dd if=/dev/urandom of=/mnt/zfs/random.bin bs=1G count=2 oflag=direct
time sudo dd if=/dev/zero of=/dev/loop22 bs=1G count=5 oflag=direct

# limit bandwidth
sudo ./bw_limit.sh

# replace and time result
sudo zpool replace pool /dev/loop22 /dev/loop26
sudo zpool status

# sudo ./bw_unlimit.sh
# sudo zpool destroy pool