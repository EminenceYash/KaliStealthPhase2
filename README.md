# KaliStealthPhase2
🔒 Want Next-Level Anonymity? Privacy Layered Environment

# 🧪 Kali Lab - Advanced Privacy & Anonymity Suite

This lab transforms a regular Kali Linux VM into a secure, stealthy hacking environment. It's built for black hat testing and ghost-mode browsing — all while minimizing the chances of digital traces.

---

## 🔐 Key Components

### 1. **Kill Switch (Firewall Rules)**
Blocks **all internet traffic** except that which goes through your VPN. If the VPN fails — you're offline, not exposed.

### 2. **MAC Address Spoofer**
Randomizes your MAC address every session to avoid device fingerprinting.

### 3. **DNS Leak Protection**
Hardcoded DNS servers (e.g., Cloudflare) + file locking prevent your DNS requests from leaking out of VPN/Tor tunnels.

### 4. **Privacy Boot Script**
A one-touch script to:
- Randomize MAC
- Activate Kill Switch
- Lock DNS
- Launch your preferred network mode (VPN, Tor, combo)

---

## 🔧 Files Structure

~/kali-lab/ 
├── kill-switch.sh # Blocks all except tun0 (VPN)
├── random-mac.sh # Changes MAC each boot/session
├── privacy-boot.sh # Launches all protections together 
├── *.ovpn # Your OpenVPN config files
└── tor-browser/ # Extracted Tor browser for GUI mode


## ✅ Usage Flow

1. Boot Kali VM  
2. Run `privacy-boot.sh`  
3. Choose a network mode (VPN, Tor, or both)  
4. Browse safely — anonymously  

> Bonus: You're ready to integrate Tails OS and live USB workflows for even higher OPSEC. (use it as it's more safe don't use tails on vm we'll talk about it on another day)

---

## ⚠️ Disclaimer

This lab is for **educational** and **research** purposes only. Misuse may violate laws. Stay ethical.

---
