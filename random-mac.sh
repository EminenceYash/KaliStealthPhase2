#!/bin/bash

INTERFACE="eth0"  # or wlan0, check with `ip a`

echo "[+] Changing MAC address on $INTERFACE"
sudo ifconfig $INTERFACE down
sudo macchanger -r $INTERFACE
sudo ifconfig $INTERFACE up
