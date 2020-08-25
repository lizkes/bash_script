#!/bin/bash

# need linux kernel 4.5+
apt update && apt -y upgrade && apt -y full-upgrade && apt -y autoremove

mkdir ~/linux-5.7.10
cd ~/linux-5.7.10
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.10/amd64/linux-headers-5.7.10-050710_5.7.10-050710.202007220834_all.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.10/amd64/linux-headers-5.7.10-050710-lowlatency_5.7.10-050710.202007220834_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.10/amd64/linux-modules-5.7.10-050710-lowlatency_5.7.10-050710.202007220834_amd64.deb
wget https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.7.10/amd64/linux-image-unsigned-5.7.10-050710-lowlatency_5.7.10-050710.202007220834_amd64.deb
dpkg -i *.deb
apt -y --fix-broken install
update-grub
apt -y autoremove
#apt -y autoremove linux-image-4*
#apt -y autoremove linux-headers-4*
#apt -y autoremove linux-modules-4*
cd ~
rm -rf linux-5.7.10
reboot