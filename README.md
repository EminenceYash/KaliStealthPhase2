# KaliStealthPhase2
🔒 Want Next-Level Anonymity? Privacy Layered Environment

# 🧪 Kali Lab - Advanced Privacy & Anonymity Suite

This lab transforms a regular Kali Linux VM into a secure, stealthy hacking environment. It's built for black hat testing and ghost-mode browsing — all while minimizing the chances of digital traces.

---

## 🔐 Key Components

### 1. **Kill Switch (Firewall Rules)**
Blocks **all internet traffic** except that which goes through your VPN. If the VPN fails — you're offline, not exposed.
--> Inside kali lab folder do this nano ~/kali-lab/kill-switch.sh -> then my script file texts to it paste it or modify it --> make it executable chmod +x ~/kali-lab/kill-switch.sh

### 2. **MAC Address Spoofer**
Randomizes your MAC address every session to avoid device fingerprinting.
--> Inside the same folder kali-lab do this -> nano ~/kali-lab/random-mac.sh ->then copy my file elements then at last -> chmod +x ~/kali-lab/random-mac.sh 

### 3. **DNS Leak Protection**
Hardcoded DNS servers (e.g., Cloudflare) + file locking prevent your DNS requests from leaking out of VPN/Tor tunnels.
let's edit by go to terminal -> sudo nano /etc/resolv.conf -> 
set these ->
"
nameserver 1.1.1.1
nameserver 1.0.0.1
"
->
do this lock it -> sudo chattr +i /etc/resolv.conf




### 4. **Privacy Boot Script**
A one-touch script to:
- Randomize MAC
- Activate Kill Switch
- Lock DNS
- Launch your preferred network mode (VPN, Tor, combo)

->ofc inside kali lab nano ~/kali-lab/privacy-boot.sh
-> then paste my content then this at last
-> chmod +x ~/kali-lab/privacy-boot.sh

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

Text me at X or linkedIn or follow me at insta or dm me for better help and guidance always happy to help any kind software or hardware and assistance.
leave me a tip at buymeacoffe the 4th link in github.

---


