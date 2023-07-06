# Script the initialize zfs

#------------------------Set up environment and compile-------------------------
sudo apt install build-essential autoconf automake libtool gawk alien fakeroot \
    dkms libblkid-dev uuid-dev libudev-dev libssl-dev zlib1g-dev libaio-dev \
    libattr1-dev libelf-dev linux-headers-generic python3 python3-dev \
    python3-setuptools python3-cffi libffi-dev python3-packaging git \
    libcurl4-openssl-dev debhelper-compat dh-python po-debconf python3-all-dev \
    python3-sphinx

sh autogen.sh
./configure
make -s -j$(nproc)

sudo zfs unmount -a
sudo zpool export -a
sudo systemctl stop zfs-send

#--------------------------------Install----------------------------------------
sudo make install
sudo ldconfig
sudo depmod
sudo modprobe zfs

sudo ./scripts/zfs.sh 
sudo systemctl enable zfs.target zfs-import.target \
    zfs-mount.service zfs-import-cache.service zfs-import-scan.service
