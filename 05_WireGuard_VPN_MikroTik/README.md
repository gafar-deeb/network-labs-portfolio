# WireGuard VPN – MikroTik RouterOS

## Lab Objective
Deploy a lightweight and efficient WireGuard VPN solution on MikroTik RouterOS to provide secure remote connectivity.

## Environment
- MikroTik RouterOS with WireGuard support
- Remote client connected over public Internet
- Dedicated VPN subnet for tunnel addressing

## Topology Overview
- MikroTik router acting as WireGuard server
- Remote peer authenticated via public key exchange
- Encrypted tunnel established over UDP

## Configuration Summary
- WireGuard interface created on RouterOS
- Peer configuration using public/private key pairs
- IP addressing assigned to tunnel interface
- Firewall rules allowing WireGuard traffic
- NAT configured for VPN subnet

## Security Considerations
- Public key–based authentication (no passwords)
- Minimal attack surface due to reduced protocol complexity
- Firewall rules limited to required UDP port

## Result
WireGuard tunnel successfully established with stable and low-latency connectivity between peers.

## Notes
This lab focuses on a clean and minimal WireGuard deployment suitable for production environments.
