# ligthweight script that install zfs

# sh autogen.sh
#./configure
make -s -j$(nproc)

sudo zfs unmount -a
sudo zpool export -a
sudo systemctl stop zfs-send

sudo make install
sudo ldconfig
sudo depmod
sudo modprobe zfs

sudo ./scripts/zfs.sh 
sudo systemctl enable zfs.target zfs-import.target \
    zfs-mount.service zfs-import-cache.service zfs-import-scan.service