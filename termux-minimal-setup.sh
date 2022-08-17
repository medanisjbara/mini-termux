#!/usr/bin/env bash

set -e

# Update
yes | pkg update -y

# Install dependencies
pkg install busybox termux-services dropbear wget file

# Setup busybox
busybox --install -s $PREFIX/bin

# Starting services daemon
souce $PREFIX/etc/profile.d/start-services.sh

# sftp server
wget -O $PREFIX/libexec/sftp-server "https://raw.githubusercontent.com/medanisjbara/Termux-minimal-setup/master/sftp-server-$(uname -m)"
