# Site-to-Site VPN – IPsec (MikroTik RouterOS)

## Lab Objective
Establish a secure Site-to-Site VPN tunnel between two geographically separated networks using IPsec on MikroTik routers.

## Environment
- Two MikroTik routers acting as VPN gateways
- Each site with independent LAN subnet
- Encrypted IPsec tunnel over public Internet

## Topology Overview
- Site A LAN routed through MikroTik Gateway A
- Site B LAN routed through MikroTik Gateway B
- Bidirectional encrypted communication via IPsec

## Configuration Summary
- IPsec peer configuration between both sites
- Phase 1 and Phase 2 policies defined
- Pre-shared key authentication
- Firewall rules adjusted to permit IPsec traffic
- NAT bypass implemented for VPN subnets

## Security Considerations
- Strong pre-shared key used
- Encryption and hashing algorithms explicitly defined
- VPN traffic excluded from NAT processing

## Result
Both sites successfully communicate over a persistent IPsec tunnel with full LAN-to-LAN connectivity.

## Notes
This lab demonstrates a production-style Site-to-Site IPsec deployment on MikroTik RouterOS.
