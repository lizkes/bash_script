#!/bin/bash

apt update && apt -y upgrade && apt -y full-upgrade && apt -y autoremove
sed -i 's/stretch/buster/g' /etc/apt/sources.list
sed -i 's/stretch/buster/g' /etc/apt/sources.list.d/*
sed -i 's/jessie/buster/g' /etc/apt/sources.list
sed -i 's/jessie/buster/g' /etc/apt/sources.list.d/*
apt update && apt -y upgrade && apt -y full-upgrade
apt -y autoremove
reboot