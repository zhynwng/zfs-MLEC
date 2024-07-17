echo cfq > /sys/module/zfs/parameters/zfs_vdev_scheduler
echo "7:21 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:24 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device