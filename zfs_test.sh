# Test script to see what's going on

for i in {1..3}; do sudo truncate -s 2G /scratch/$i.img; done

sudo zpool create test raidz /scratch/1.img /scratch/2.img /scratch/3.img 
sudo dd if=/dev/zero of=/scratch/2.img bs=2G count=1 2>/dev/null
sudo dd if=/dev/zero of=/scratch/3.img bs=2G count=1 2>/dev/null
sudo zpool scrub test

sudo cat /proc/spl/kstat/zfs/dbgmsg > log.txt
sudo zpool destroy test
