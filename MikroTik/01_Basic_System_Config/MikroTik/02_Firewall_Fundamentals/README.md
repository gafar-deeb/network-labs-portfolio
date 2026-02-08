# MikroTik Lab 2 – Firewall Fundamentals

## Objective
Implement basic firewall rules on a MikroTik router to secure the network:
- Configure Filter rules to allow/deny traffic
- Implement NAT for internal network
- Understand and apply basic IPsec concepts

## Topology

[PC1] ---
|
[MikroTik Router] --- Internet
|
[PC2] ---

## Steps Taken
1. Accessed the MikroTik router via Winbox and SSH.
2. Configured basic Filter Rules:
   - Allow established and related connections:
     ```
     /ip firewall filter add chain=forward connection-state=established,related action=accept comment="Allow Established/Related"
     ```
   - Drop invalid connections:
     ```
     /ip firewall filter add chain=forward connection-state=invalid action=drop comment="Drop Invalid"
     ```
   - Allow LAN to Internet:
     ```
     /ip firewall filter add chain=forward src-address=192.168.10.0/24 out-interface=WAN action=accept comment="LAN to Internet"
     ```
   - Drop all other forward traffic by default:
     ```
     /ip firewall filter add chain=forward action=drop comment="Drop All Other Forward"
     ```

## Configured NAT for internal network:
ip firewall nat add chain=srcnat out-interface=WAN action=masquerade comment="NAT for LAN"

## Tested connectivity:
- PCs can access Internet
- Unauthorized traffic blocked by firewall

## Introduced basic IPsec policy (example, non-operational placeholder for lab purposes):
ip ipsec policy add src-address=192.168.10.0/24 dst-address=0.0.0.0/0 sa-src-address=<RouterWAN_IP> sa-dst-address=<RemotePeer_IP> tunnel=yes action=encrypt proposal=default

## Outcome
- LAN clients access Internet through NAT  
- Unwanted or invalid traffic is blocked  
- Basic firewall protection is applied  
- IPsec policy configured as a conceptual introduction for secure tunnels
