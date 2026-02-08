/interface wireguard
add name=wg0 listen-port=13231 private-key=SERVER_PRIVATE_KEY

/ip address
add address=10.20.20.1/24 interface=wg0

/interface wireguard peers
add interface=wg0 public-key=CLIENT_PUBLIC_KEY allowed-address=10.20.20.2/32

/ip firewall filter
add chain=input protocol=udp port=13231 action=accept

/ip firewall nat
add chain=srcnat src-address=10.20.20.0/24 action=masquerade
