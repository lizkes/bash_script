dd if=/dev/zero of=/swapfile bs=1M count=1024
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo /swapfile swap swap defaults 0 0 >> /etc/fstab
