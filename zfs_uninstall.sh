# A simple shell script that uninstall zfs 

sudo modprobe -r zfs
sudo make uninstall
sudo ldconfig
sudo depmod