# A simple shell script that uninstall zfs 

sudo modprobe -r zfs
sudo make uninstall
sudo ldconfig
sudo depmod
sudo rm -rf /usr/local/etc/zfs
sudo rm -rf /usr/lib/python3/dist-packages/libzfs_core
sudo ./scripts/zfs.sh -u