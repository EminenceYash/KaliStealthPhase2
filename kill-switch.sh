#!/bin/bash

# Kill switch - blocks all traffic unless through VPN (tun0)
iptables -F
iptables -P OUTPUT DROP
iptables -P INPUT DROP
iptables -P FORWARD DROP

iptables -A OUTPUT -o lo -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT

iptables -A OUTPUT -o tun0 -j ACCEPT
iptables -A INPUT -i tun0 -j ACCEPT

iptables -A OUTPUT -p udp --dport 53 -j DROP
iptables -A OUTPUT -p tcp --dport 53 -j DROP

echo "[+] Kill switch activated. Only VPN traffic is allowed."
