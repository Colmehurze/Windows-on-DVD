#Running this file restores your windows data.

sudo apt update
sudo apt install qemu-system-x86_64
qemu-system-x86_64 -hda Windows.qcow2 -m 3G
