# Remote Access VPN – L2TP (MikroTik RouterOS)

## Lab Objective
Implement a secure Remote Access VPN solution using L2TP to allow authenticated remote clients to access internal network resources.

## Environment
- MikroTik RouterOS
- Remote clients connecting over public Internet
- Local LAN subnet routed through VPN tunnel

## Topology Overview
- MikroTik router acting as L2TP server
- Remote VPN client authenticated via local user database
- Encrypted tunnel over Internet

## Configuration Summary
- L2TP server enabled on RouterOS
- IP pool assigned to VPN clients
- PPP profile created for L2TP users
- User authentication via PPP secrets
- Firewall rules adjusted to allow L2TP and IPsec traffic
- NAT and routing verified for internal access

## Security Considerations
- Strong user credentials enforced
- L2TP combined with IPsec for encryption
- Firewall rules restricted to required protocols only

## Result
Remote clients successfully establish L2TP VPN connections and gain controlled access to internal network resources.

## Notes
This lab focuses on practical L2TP deployment and operational readiness rather than theoretical protocol explanation.
