chown cc:cc /sys/module/zfs/parameters/zfs_vdev_scheduler
chown cc:cc /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
chown cc:cc /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device

echo cfq > /sys/module/zfs/parameters/zfs_vdev_scheduler
echo "7:21 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device
cat /sys/fs/cgroup/blkio/blkio.throttle.write_bps_device


echo "7:21 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device
cat /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_bps_device

echo "7:21 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device
cat /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_bps_device


# ------------------------ throttle read --------------------------------------
chown cc:cc /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
chown cc:cc /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device

echo cfq > /sys/module/zfs/parameters/zfs_vdev_scheduler
echo "7:21 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device
cat /sys/fs/cgroup/blkio/blkio.throttle.read_bps_device


echo "7:21 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device
cat /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_bps_device

echo "7:21 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device
cat /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_bps_device


# ---------------------------- iops limit ----------------------------------
chown cc:cc /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
chown cc:cc /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device

echo cfq > /sys/module/zfs/parameters/zfs_vdev_scheduler
echo "7:21 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device
cat /sys/fs/cgroup/blkio/blkio.throttle.write_iops_device


echo "7:21 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device
cat /sys/fs/cgroup/blkio/system.slice/blkio.throttle.write_iops_device

echo "7:21 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device
cat /sys/fs/cgroup/blkio/user.slice/blkio.throttle.write_iops_device


# ------------------------ throttle read --------------------------------------
chown cc:cc /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
chown cc:cc /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device

echo cfq > /sys/module/zfs/parameters/zfs_vdev_scheduler
echo "7:21 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device
cat /sys/fs/cgroup/blkio/blkio.throttle.read_iops_device


echo "7:21 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device
cat /sys/fs/cgroup/blkio/system.slice/blkio.throttle.read_iops_device

echo "7:21 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device
echo "7:22 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device
echo "7:23 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device
echo "7:24 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device
echo "7:25 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device
echo "7:26 104857600" > /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device
cat /sys/fs/cgroup/blkio/user.slice/blkio.throttle.read_iops_device