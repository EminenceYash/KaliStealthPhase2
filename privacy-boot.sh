#!/bin/bash

echo "[+] Randomizing MAC address..."
bash ~/kali-lab/random-mac.sh

echo "[+] Activating Kill Switch..."
bash ~/kali-lab/kill-switch.sh

echo "[+] Setup complete. You are in stealth mode."
