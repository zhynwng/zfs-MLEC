## Evaluate ZFS repairing speed

First, clone this repository and switch to mlec-cp branch

```
git clone https://github.com/zhynwng/zfs-MLEC.git
cd zfs-MLEC
git checkout mlec-cp
```

Then, install necessary packeges for ZFS and then install ZFS

```
sudo ./zfs_init.sh
sudo ./zfs_full_install.sh
```

Next, create tmpfs for our evaluation. Press enter for each options pop up

```
sudo ./create_loopbach.sh
```

Then, run the evaluation script. After the running the script, we should be able to get a ZFS pool that have one failed parity, and is in the process of resilvering. t
```
sudo ./zfs_test.sh
```

You can check the repair speed and progress using the command 

```
zpool status
```

After repair is done, we can evaluate the performance by checking the resilvering time and bytes using the above command as well. Lastly, don't forget to un-throttle the disk and destroy the pool

```
sudo ./bw_unlimit.sh
sudo zpool destroy pool
```

For more information of the actual script, or change the configuration of the evaluation, view the script zfs_test.sh 