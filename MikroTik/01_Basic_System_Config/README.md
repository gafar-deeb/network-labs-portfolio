# MikroTik Lab 1 – Basic System Configuration

## Objective
Configure a MikroTik router with basic system settings:
- Clock & Timezone
- DNS resolution
- DHCP service for LAN clients

## Topology

## Steps Taken
1. Accessed the MikroTik router via Winbox and SSH.
2. Set system clock and timezone:
## Configured DNS servers:
ip dns set servers=8.8.8.8,8.8.4.4 allow-remote-requests=yes
## Configured DHCP Pool and Server:
ip pool add name=dhcp_pool ranges=192.168.10.10-192.168.10.50
ip dhcp-server add name=dhcp1 interface=LAN address-pool=dhcp_pool disabled=no
ip dhcp-server network add address=192.168.10.0/24 gateway=192.168.10.1 dns-server=8.8.8.8
## Assigned IP to LAN interface:
ip address add address=192.168.10.1/24 interface=LAN
## Verified connectivity on PCs and DNS resolution:
- DHCP IP assignment successful
- Internet access working
- DNS resolving correctly
7. Confirmed system clock and logs were correct.

## Outcome
- LAN clients receive IP automatically
- Router resolves domain names correctly
- Router system clock set properly for logging and monitoring
