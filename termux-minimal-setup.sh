#!/usr/bin/env bash

# Update
yes | pkg update -y

# Install dependencies
pkg install busybox termux-services dropbear wget

# Starting services daemon
souce $PREFIX/etc/profile.d/start-services.sh

# sftp server
wget -O $PREFIX/libexec/sftp-server "https://raw.githubusercontent.com/medanisjbara/Termux-minimal-setup/master/sftp-server-$(uname -m)"
