chown cc:cc /sys/module/zfs/parameters/zfs_vdev_scheduler
chown cc:cc /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
chown cc:cc /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device

echo cfq > /sys/module/zfs/parameters/zfs_vdev_scheduler
echo "7:21 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:22 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:23 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:24 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:25 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:26 10485760" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
cat /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device


echo "7:21 10485760" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:22 10485760" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:23 10485760" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:24 10485760" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:25 10485760" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:26 10485760" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
cat /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device

echo "7:21 10485760" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:22 10485760" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:23 10485760" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:24 10485760" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:25 10485760" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:26 10485760" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
cat /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device




