#!/usr/bin/env bash

# Update
yes | pkg update -y

# Install dependencies
pkg install busybox termux-services dropbear wget

# Starting services daemon
souce $PREFIX/etc/profile.d/start-services.sh

