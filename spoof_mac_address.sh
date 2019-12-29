#!/bin/bash
# https://www.online-tech-tips.com/computer-tips/how-to-change-mac-address/
echo "ORIGINAL MAC Address"
ifconfig en0 | grep ether
RANDOM_MAC_ADDRESS=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
sudo ifconfig en0 ether $RANDOM_MAC_ADDRESS
echo "NEW MAC Address"
ifconfig en0 | grep ether
